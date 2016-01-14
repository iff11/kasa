class Employee < ActiveRecord::Base
  has_many :visits
end
