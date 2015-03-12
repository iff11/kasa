class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.integer :item_id
      t.integer :visit_id
      t.integer :count
      t.float :price

      t.timestamps null: false
    end
  end
end
