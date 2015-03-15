class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :purchase_price
      t.float :selling_price
      t.integer :stock, default: nil
      t.boolean :unlimited, default: true
      t.string :barcode, default: nil

      t.timestamps null: false
    end

    add_column :items, :deleted_at, :datetime
    add_index :items, :deleted_at
  end
end
