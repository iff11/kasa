class AddDeletedAts < ActiveRecord::Migration
  def change
    add_column :customers, :deleted_at, :datetime
    add_index :customers, :deleted_at

    add_column :sells, :deleted_at, :datetime
    add_index :sells, :deleted_at

    add_column :users, :deleted_at, :datetime
    add_index :users, :deleted_at
  end
end
