class Visit < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :customer, counter_cache: true
  belongs_to :employee
  has_many :sells

  # scope :opened, -> { where(completed: false) }

  def total_price
    sells.sum(:price)
  end
end
