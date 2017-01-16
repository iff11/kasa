class TouchAllVisits2 < ActiveRecord::Migration
  def change
    Visit.all.each do |visit|
      visit.received_cash -= 1
      visit.save!
    end
  end
end
