class SellHasMandatoryRelationships < ActiveRecord::Migration
  def change
    Sell.with_deleted.where(item_id: nil).each do |sell|
      sell.really_destroy!
    end
    change_column_null :sells, :item_id, false
    change_column_null :sells, :visit_id, false
  end
end
