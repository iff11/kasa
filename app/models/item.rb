class Item < ActiveRecord::Base
  acts_as_paranoid

  default_scope { order('unlimited', 'name') }

  has_many :sells
  has_many :supplies

  # Don't really know why this does not work
  # belongs_to :last_supply, class_name: 'Supply'
end
