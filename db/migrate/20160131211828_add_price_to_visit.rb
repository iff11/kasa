class AddPriceToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :price, :decimal, null: false, default: 0.0
  end
end
