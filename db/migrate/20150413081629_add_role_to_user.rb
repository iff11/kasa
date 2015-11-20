class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean, null: false, default: false

    admin = User.find_by(email: "salon@topstylesalon.cz")
    admin.update(is_admin: true)
    admin.save!
  end
end
