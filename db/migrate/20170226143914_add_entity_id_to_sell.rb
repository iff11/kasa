class AddEntityIdToSell < ActiveRecord::Migration
  def change
    add_reference :sells, :entity, index: true

    # Sell.with_deleted.joins(:item).update_all('sells.item_id = items.item_id')
    execute "UPDATE sells SET entity_id = items.entity_id FROM items WHERE items.id = sells.item_id;"

    change_column_null(:sells, :entity_id, false)
  end
end
