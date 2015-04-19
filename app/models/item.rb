class Item < ActiveRecord::Base
  acts_as_paranoid

  has_many :sells
  has_many :supplies
end
