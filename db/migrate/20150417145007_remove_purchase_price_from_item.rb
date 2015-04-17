class RemovePurchasePriceFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :purchase_price
  end
end
