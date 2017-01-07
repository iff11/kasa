class Company < ActiveRecord::Base
  has_many :users
  has_many :customers
  has_many :items
  has_many :employees
  has_many :entities
end
