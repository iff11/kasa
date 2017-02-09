class AddLogoToReciept < ActiveRecord::Migration
  def change
    add_column :companies, :invoice_logo, :string, :limit => 255
  end
end
