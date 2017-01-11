class ReceivedAmountSplit < ActiveRecord::Migration
  def change
    rename_column :visits, :paid_in_cash, :paid_in_cash
    change_column :visits, :paid_in_cash, :decimal

    add_column :visits, :paid_by_card, :decimal, null: false, default: 0.0
  end
end
