class ReceivedAmountSplit < ActiveRecord::Migration
  def change
    change_column :visits, :received_amount, :decimal
    rename_column :visits, :received_amount, :received_cash

    add_column :visits, :paid_by_card, :decimal, null: false, default: 0.0
    add_column :visits, :paid_in_cash, :decimal, null: false, default: 0.0

    Visit.all.each do |visit|
      visit.paid_in_cash = visit.price_with_tip
      visit.save!
    end
  end
end
