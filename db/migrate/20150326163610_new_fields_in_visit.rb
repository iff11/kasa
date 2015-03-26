class NewFieldsInVisit < ActiveRecord::Migration
  def change
    add_column :visits, :price_with_tip, :float
    add_column :visits, :received_amount, :float
  end
end
