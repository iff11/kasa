class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.text :note
      t.integer :customer_id, null: false
      t.integer :employee_id, null: false
      t.boolean :completed, null: false, default: false

      t.timestamps null: false
    end

    add_column :visits, :deleted_at, :datetime
    add_index :visits, :deleted_at
  end
end
