class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.float :purchase_price, default: 0, null: false
      t.integer :quantity, default: 1, null: false
      t.integer :item_id, null: false

      t.timestamps null: false
    end

    add_column :supplies, :deleted_at, :datetime
    add_index :supplies, :deleted_at
  end
end
