class AddSendEetToEntities < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :send_eet, :boolean, null: false, default: false
  end
end
