class AddPrintingSettingsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :is_invoice_printing_active, :boolean, null: false, default: false
  end
end
