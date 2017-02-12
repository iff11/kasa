class AddCashbookBalanceToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :cashbook_balance, :decimal, null: false, default: 0.0
  end
end
