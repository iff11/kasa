class AddWarningThresholdToItem < ActiveRecord::Migration
  def change
    add_column :items, :warning_threshold, :integer, default: 0, null: false
  end
end
