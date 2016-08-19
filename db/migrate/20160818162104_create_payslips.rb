class CreatePayslips < ActiveRecord::Migration
  def change
    create_table :payslips do |t|
      t.integer :employee_id, null: false
      t.date :period, null: false
      t.decimal :share_sale, default: 0.0
      t.decimal :share_service, default: 0.0

      t.timestamps null: false
    end

    add_index :payslips, [:employee_id, :period], unique: true
  end
end
