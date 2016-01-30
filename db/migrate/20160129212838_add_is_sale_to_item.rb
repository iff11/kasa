class AddIsSaleToItem < ActiveRecord::Migration
  def change
    add_column :items, :is_service, :boolean, null: false, default: false
  end
end
