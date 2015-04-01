class Sell < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  belongs_to :visit
end
