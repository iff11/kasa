class NullAllTheThings < ActiveRecord::Migration
  def change
    change_column_null(:customers, :visits_count, false, 0)
    change_column_default(:customers, :visits_count, 0)

    change_column_null(:items, :selling_price, false, 0.0)
    change_column_default(:items, :selling_price, 0.0)

    change_column_null(:items, :unlimited, false, false)

    change_column_null(:items, :bought, false, 0)
    change_column_default(:items, :bought, 0)

    change_column_null(:items, :sold, false, 0)
    change_column_default(:items, :sold, 0)

    change_column_null(:visits, :price_with_tip, false, 0.0)
    change_column_default(:visits, :price_with_tip, 0.0)

    change_column_null(:visits, :received_amount, false, 0.0)
    change_column_default(:visits, :received_amount, 0.0)
  end
end
