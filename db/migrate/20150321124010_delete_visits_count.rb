class DeleteVisitsCount < ActiveRecord::Migration
  def change
    remove_column :customers, :visits_count
  end
end
