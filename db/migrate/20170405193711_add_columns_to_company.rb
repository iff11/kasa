class AddColumnsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :address, :string, null: false, default: ''
    add_column :companies, :website, :string, null: false, default: ''
    add_column :companies, :facebook, :string, null: false, default: ''
    add_column :companies, :phone, :string, null: false, default: ''
  end
end
