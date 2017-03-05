class AddTableRevenues < ActiveRecord::Migration[5.0]
  def change
    create_table :revenues do |t|
      t.decimal :amount, null: false
      t.text :response, null: false
      t.string :fik, null: false

      t.timestamps null: false
    end

    add_reference :revenues, :visit, index: true, null: false
    add_reference :revenues, :entity, index: true, null: false
  end
end
