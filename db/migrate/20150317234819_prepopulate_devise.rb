class PrepopulateDevise < ActiveRecord::Migration
  def change
    admin = User.new
    admin.email = 'salon@topstylesalon.cz'
    admin.password = 'samponjedenaparu'
    admin.save!(:validate => false)

    employee = User.new
    employee.email = 'kadernik@topstylesalon.cz'
    employee.password = 'kaderniktopstyle'
    employee.save!(:validate => false)
  end
end
