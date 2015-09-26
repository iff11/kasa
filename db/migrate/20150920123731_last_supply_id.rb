class LastSupplyId < ActiveRecord::Migration
  def change
    rename_column :items, :last_supply, :last_supply_id
  end
end
