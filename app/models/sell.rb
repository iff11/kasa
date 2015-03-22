class Sell < ActiveRecord::Base
  belongs_to :item
  belongs_to :visit

  def total_price
    price * count
  end
end
