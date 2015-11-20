class StockToBoughtAndSold < ActiveRecord::Migration
  def change
    remove_column :items, :stock

    # Supply.counter_culture_fix_counts
    # Sell.counter_culture_fix_counts
  end
end
