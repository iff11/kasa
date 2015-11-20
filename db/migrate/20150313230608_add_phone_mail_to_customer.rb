class AddPhoneMailToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :phone, :string, :limit => 50
    add_column :customers, :mail, :string, :limit => 50
  end
end
