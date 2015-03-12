class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.text :note
      t.date :birth

      t.timestamps null: false
    end
  end
end
