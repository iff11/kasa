class AddHeadquatersToEntity < ActiveRecord::Migration
  def change
    add_column :entities, :headquarters, :string
    add_column :entities, :identification_number, :string
    add_column :entities, :business_register, :string
  end
end
