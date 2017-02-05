class AddInvoiceHeaderToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :invoice_header, :text
  end
end
