class MigrateItemDataToSupplyData < ActiveRecord::Migration
  def change
    Item.all.with_deleted.each do |item|
      supply = Supply.new
      supply.item_id = item.id

      supply.purchase_price = item.purchase_price.nil? ? 0 : item.purchase_price
      supply.quantity = item.stock.nil? ? 0 : item.stock
      supply.created_at = item.created_at
      supply.updated_at = item.updated_at
      supply.save!
    end
  end
end
