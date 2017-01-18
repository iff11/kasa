class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, default: 0
    User.all.each do |user|
      if user.is_admin
        user.admin!
      else
        user.employee!
      end
      user.save!
    end
    remove_column :users, :is_admin
  end
end
