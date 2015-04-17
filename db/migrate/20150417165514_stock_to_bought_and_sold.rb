class StockToBoughtAndSold < ActiveRecord::Migration
  def change
    remove_column :items, :stock
    add_column :items, :bought, :iteger, nil: false, default: 0
    add_column :items, :sold, :integer, nil: false, default: 0

    Supply.counter_culture_fix_counts
    Sell.counter_culture_fix_counts
  end
end
