class AddActiveToItem < ActiveRecord::Migration
  def change
    add_column :items, :is_active, :boolean, null: false, default: true
  end
end
