class RemoveForeignKeyFromEntities < ActiveRecord::Migration
  def change
    remove_foreign_key :entities, :companies
  end
end
