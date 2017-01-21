class AddNotNullConstraintToSellEntityId < ActiveRecord::Migration
  def change
    change_column_null :sells, :entity_id, false
  end
end
