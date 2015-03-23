class Item < ActiveRecord::Base
  acts_as_paranoid

  default_scope { order('unlimited', 'name') }

  has_many :sells
end
