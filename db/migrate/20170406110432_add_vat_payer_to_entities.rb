class AddVatPayerToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :is_vat_payer, :boolean, null: false, default: false
  end
end
