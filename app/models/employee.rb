class Employee < ApplicationRecord
  acts_as_paranoid

  has_many :visits
  belongs_to :company
end
