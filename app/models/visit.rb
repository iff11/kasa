class Visit < ActiveRecord::Base
  default_scope { order(created_at: :desc) }

  acts_as_paranoid

  # TODO: Get rid of that in favor of triggers
  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells, dependent: :destroy

  def self.opened
    where(completed: false)
  end

  trigger.after(:insert) do
    "UPDATE customers SET last_visit_date = NEW.created_at WHERE customers.id = NEW.customer_id;"
  end

  trigger.after(:insert, :update).name('fix_money_in_cashbook') do
    <<-SQL
      INSERT INTO cashbooks (date, visit_id, company_id, credit, cash)
      VALUES (
        NEW.created_at,
        NEW.id,
        (SELECT company_id FROM employees WHERE employees.id = NEW.employee_id),
        (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits WHERE visits.id = NEW.id),
        (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits WHERE visits.id = NEW.id)
      )
      ON CONFLICT (date, visit_id) DO UPDATE SET
        credit = (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits WHERE visits.id = NEW.id),
        cash = (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits WHERE visits.id = NEW.id);
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
