class Visit < ActiveRecord::Base
  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells, dependent: :destroy

  # has_one :last_customer, inverse_of: :last_visit

  def self.opened
    where(completed: false)
  end
end
