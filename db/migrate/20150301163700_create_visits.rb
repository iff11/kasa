class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.text :note
      t.integer :customer_id, null: false
      t.boolean :completed, null: false, default: false

      t.timestamps null: false
    end
  end
end
