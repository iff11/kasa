class MigrateItemDataToSupplyData < ActiveRecord::Migration
  def change
    Item.all.with_deleted.each do |item|
      if item.purchase_price == item.selling_price
        item.selling_price = item.selling_price * 1.21
        item.save!
      end
    end

    Item.all.with_deleted.each do |item|
      supply = Supply.new
      supply.item_id = item.id

      supply.purchase_price = item.purchase_price.nil? ? 0 : item.purchase_price
      supply.quantity = item.stock.nil? ? 0 : item.stock
      supply.created_at = item.created_at
      supply.updated_at = item.updated_at
      supply.save!
    end

    remove_column :items, :purchase_price
  end
end
