class Visit < ActiveRecord::Base
  default_scope { order(created_at: :desc) }

  acts_as_paranoid

  # TODO: Get rid of that in favor of triggers
  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells, dependent: :destroy
  has_one :cashbook_entry

  def self.opened
    where(completed: false)
  end

  trigger.after(:insert) do
    "UPDATE customers SET last_visit_date = NEW.created_at WHERE customers.id = NEW.customer_id;"
  end
  #
  # trigger.after(:update) do
  #   <<-SQL_ACTIONS
  #     UPDATE cashbook_entries SET
  #       amount = NEW.paid_in_cash,
  #       when = NOW()
  #     WHERE
  #       visit_id = NEW.id;
  #   SQL_ACTIONS
  # end

  # trigger.after(:update).of(:deleted_at).where('NEW.deleted_at IS NOT NULL').name('fix_last_visit') do
  #   <<-SQL
  #     UPDATE users SET last_visit_id = (
  #       SELECT id FROM visit WHERE
  #       SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL
  #     ) WHERE users.last_visit_id = NEW.id;
  #   SQL
  # end
end
