class SellsPriceAndCountToNotNull < ActiveRecord::Migration
  def change
    change_column_null(:sells, :price, false, 0.0)
    change_column_null(:sells, :count, false, 0)
  end
end
