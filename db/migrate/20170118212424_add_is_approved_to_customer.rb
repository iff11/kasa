class AddIsApprovedToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :is_approved, :boolean, null: false, default: false
    Customer.update_all is_approved: true
  end
end
