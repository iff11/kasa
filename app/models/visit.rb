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

  trigger.after(:insert).name('update_customer_last_visit') do
    "UPDATE customers SET last_visit_date = NEW.created_at WHERE customers.id = NEW.customer_id;"
  end

  # TODO: Join to one trigger
  trigger.after(:insert).name('check_and_create_new_cashbook') do
    <<-SQL
      DECLARE
        my_company_id int;
      BEGIN
        my_company_id := (SELECT company_id FROM employees WHERE employees.id = NEW.employee_id);
        INSERT INTO cashbooks (date, company_id, created_at, updated_at)
        VALUES (
          NEW.created_at,
          my_company_id,
        )
        ON CONFLICT DO NOTHING;
      END;
    SQL
  end

  trigger.after(:insert, :update).name('fix_money_in_cashbook') do
    <<-SQL
      DECLARE
        my_company_id int;
      BEGIN
        my_company_id := (SELECT company_id FROM employees WHERE employees.id = NEW.employee_id);
        UPDATE cashbooks SET
          paid_by_card = (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits LEFT JOIN employees ON visits.employee_id = employees.id WHERE employees.company_id = my_company_id),
          paid_in_cash = (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits LEFT JOIN employees ON visits.employee_id = employees.id WHERE employees.company_id = my_company_id),
          updated_at = NOW()
        WHERE
          date = NEW.created_at AND
          company_id = my_company_id;
      END;
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
