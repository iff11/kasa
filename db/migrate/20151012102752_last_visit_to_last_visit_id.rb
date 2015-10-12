class LastVisitToLastVisitId < ActiveRecord::Migration
  def change
    rename_column :customers, :last_visit, :last_visit_id
  end
end
