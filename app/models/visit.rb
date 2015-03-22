class Visit < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :customer
  belongs_to :employee
  has_many :sells

  # scope :opened, -> { where(completed: false) }

  def total_price
    sells.sum("count * price")
  end
end
