class Company < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :employees, dependent: :destroy
  has_many :entities, dependent: :destroy
end
