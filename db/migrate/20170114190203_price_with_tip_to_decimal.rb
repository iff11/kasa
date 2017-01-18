class PriceWithTipToDecimal < ActiveRecord::Migration
  def change
    change_column :visits, :price_with_tip, :decimal
  end
end
