class AddSendEetToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :send_eet, :boolean, null: false, default: false
  end
end
