class Employee < ActiveRecord::Base
  acts_as_paranoid

  has_many :visits
end
