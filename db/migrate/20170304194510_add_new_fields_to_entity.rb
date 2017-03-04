class AddNewFieldsToEntity < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :vatid, :string, null: false, default: ''
    add_column :entities, :premisesid, :string, null: false, default: ''
    add_column :entities, :registerid, :string, null: false, default: ''
    add_column :entities, :certificate, :binary, null: false, default: ''
    add_column :entities, :certificate_password, :string, null: false, default: ''
  end
end
