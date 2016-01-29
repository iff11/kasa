class Visit < ActiveRecord::Base
  default_scope { order(updated_at: :desc) }

  acts_as_paranoid

  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells, dependent: :destroy

  # has_one :last_customer, inverse_of: :last_visit

  def self.opened
    where(completed: false)
  end

  trigger.after(:insert) do
    "UPDATE customers SET last_visit_id = NEW.id WHERE customers.id = NEW.customer_id;"
  end
end
