class CreatePayslips < ActiveRecord::Migration
  def change
    create_table :payslips do |t|
      t.integer :employee_id, null: false
      t.integer :period_id, null: false
      t.decimal :share_sale, default: 0.0
      t.decimal :share_service, default: 0.0

      t.timestamps null: false
    end

    add_index :payslips, [:employee_id, :period_id], unique: true

    create_table :periods do |t|
      t.date :start_date, null: false
      t.boolean :is_active, null: false, default: false

      t.timestamps null: false
    end

    add_column :employees, :current_payslip_id, :integer, null: true, default: null
  end
end
