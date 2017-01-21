class PurgeSells < ActiveRecord::Migration
  def change
    # sql = "DELETE FROM sells WHERE item_id IS NULL"
    # ActiveRecord::Base.connection.execute(sql)

    Sell.with_deleted.where(item_id: nil).each do |sell|
      sell.really_destroy!
    end

    Item.with_deleted.where(entity_id: nil).each do |item|
      item.really_destroy!
    end
  end
end
