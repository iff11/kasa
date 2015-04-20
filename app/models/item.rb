class Item < ActiveRecord::Base
  acts_as_paranoid

  default_scope { order('unlimited', 'name') }

  has_many :sells
  has_many :supplies

  # Do not enable this. It will fuckup last_supply in ember because it will embed the data
  # belongs_to :last_supply, class_name: 'Supply', foreign_key: 'last_supply'
end
