class Visit < ActiveRecord::Base
  belongs_to :customer
  has_many :sells

  scope :opened, -> { where(completed: false) }
end
