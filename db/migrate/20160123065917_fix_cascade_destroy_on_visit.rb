class FixCascadeDestroyOnVisit < ActiveRecord::Migration
  def change
    Visit.only_deleted.each do |visit|
      puts "#{visit.id}: #{visit.sells.length}x"

      visit.restore
      visit.save!

      visit.destroy
      visit.save!
    end
  end
end
