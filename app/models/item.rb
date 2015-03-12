class Item < ActiveRecord::Base
  # default_scope { order('unlimited', 'name') }

  has_many :sells
  acts_as_paranoid
end
