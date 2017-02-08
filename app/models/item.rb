class Item < ActiveRecord::Base
  acts_as_paranoid

  has_many :sells, dependent: :destroy
  has_many :supplies, dependent: :destroy
  # belongs_to :last_supply
  belongs_to :last_supply, class_name: 'Supply'#, foreign_key: 'last_supply'
  belongs_to :company
  belongs_to :entity
end
