class Visit < ActiveRecord::Base
  default_scope { order(updated_at: :desc) }

  acts_as_paranoid

  belongs_to :customer, counter_cache: true
  belongs_to :employee
  belongs_to :payslip
  has_many :sells, dependent: :destroy

  def self.opened
    where(completed: false)
  end

  trigger.after(:insert) do
    "UPDATE customers SET last_visit_date = NEW.created_at WHERE customers.id = NEW.customer_id;"
  end

  # If there is new period, create new payslip for our employee
  # Autofill current payslip_id to current visit
  trigger.before(:insert) do
    <<-SQL
      INSERT INTO payslips (
        employee_id,
        period_id,
        created_at,
        updated_at
      ) VALUES (
        NEW.employee_id,
        (SELECT id FROM periods WHERE is_active = true),
        NOW(),
        NOW()
      ) ON CONFLICT DO NOTHING;

      NEW.payslip_id := (SELECT id FROM payslips WHERE
        employee_id = NEW.employee_id AND
        period_id = (SELECT id FROM periods WHERE is_active = true)
      );
    SQL
  end

  # trigger.before(:insert).name('find_proper_payslip_id_on_insert') do
  #   <<-SQL
  #   SQL
  # end

  trigger.after(:insert, :update, :delete) do
    <<-SQL
      UPDATE payslips SET
        share_sale = (SELECT COALESCE(SUM(employee_share_sale)) FROM visits WHERE payslip_id = NEW.payslip_id),
        share_service = (SELECT COALESCE(SUM(employee_share_service)) FROM visits WHERE payslip_id = NEW.payslip_id)
      WHERE
        id = NEW.payslip_id;
    SQL
  end

  # trigger.after(:update).of(:deleted_at).where('NEW.deleted_at IS NOT NULL').name('fix_last_visit') do
  #   <<-SQL
  #     UPDATE users SET last_visit_id = (
  #       SELECT id FROM visit WHERE
  #       SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL
  #     ) WHERE users.last_visit_id = NEW.id;
  #   SQL
  # end
end
