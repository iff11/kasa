class AddIsActiveToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :is_active, :boolean, null: false, default: true
  end
end
