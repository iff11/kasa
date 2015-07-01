class Visit < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells

  # has_one :last_customer, inverse_of: :last_visit

  def self.opened
    where(completed: false)
  end
end
