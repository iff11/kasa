class AddLastSupplyToItem < ActiveRecord::Migration
  def change
    add_column :items, :last_supply, :integer, nil: true, default: nil
  end
end
