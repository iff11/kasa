class Sell < ActiveRecord::Base
  belongs_to :item
  belongs_to :visit
end
