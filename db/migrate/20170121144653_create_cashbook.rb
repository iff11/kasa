class CreateCashbook < ActiveRecord::Migration
  def change
    create_table :cashbooks do |t|
      t.date :date
      t.decimal :paid_by_card, default: 0.0, null: false
      t.decimal :paid_in_cash, default: 0.0, null: false
      t.integer :company_id, null: false
      t.integer :visit_id, null: false

      t.timestamps null: false
    end

    add_index :cashbooks, [:date, :visit_id], unique: true
  end
end
