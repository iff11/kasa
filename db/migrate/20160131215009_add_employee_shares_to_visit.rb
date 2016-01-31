class AddEmployeeSharesToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :employee_share_sale, :decimal, null: false, default: 0.0
    add_column :visits, :employee_share_service, :decimal, null: false, default: 0.0
  end
end
