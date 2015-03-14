class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url

      t.timestamps null: false
    end

    add_column :employees, :deleted_at, :datetime
    add_index :employees, :deleted_at
  end
end
