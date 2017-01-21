class AddEntityIdToSell < ActiveRecord::Migration
  def change
    add_reference :sells, :entity, index: true

    # Sell.with_deleted.each do |sell|
      # puts "sell #{sell.id} will get entity_id = #{sell.item.entity_id}"
      # sell.entity_id = sell.item.entity_id
      # sell.save!
    # end
    
    sql = "UPDATE sells AS s SET entity_id = i.entity_id FROM items AS i WHERE s.item_id = i.id;"
    ActiveRecord::Base.connection.execute(sql)

  end
end
