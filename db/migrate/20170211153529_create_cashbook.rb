class CreateCashbook < ActiveRecord::Migration
  def change
    create_table :cashbook_entries do |t|
      t.decimal :amount, null: false
      t.integer :kind, null: false
      t.datetime :touched_at, null: false
      t.string :note

      t.timestamps null: false
    end

    add_reference :cashbook_entries, :company, index: true, null: false
    add_reference :cashbook_entries, :visit, index: false, null: true
    add_index :cashbook_entries, :visit_id, unique: true
  end
end
