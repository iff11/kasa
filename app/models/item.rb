class Item < ActiveRecord::Base
  acts_as_paranoid

  has_many :sells
  has_many :supplies
  # belongs_to :last_supply
  belongs_to :last_supply, class_name: 'Supply'#, foreign_key: 'last_supply'
  belongs_to :company
  belongs_to :entity
end
