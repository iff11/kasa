class RemoveLastVisit < ActiveRecord::Migration
  def change
    remove_column :customers, :last_visit_id
  end
end
