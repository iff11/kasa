class AddReceiptInfoToEntity < ActiveRecord::Migration
  def change
    add_column :entities, :invoice_header, :text
  end
end
