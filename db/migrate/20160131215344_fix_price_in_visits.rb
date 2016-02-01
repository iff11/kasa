class FixPriceInVisits < ActiveRecord::Migration
  def change
    Sell.all.each do |sell|
      sell.count = sell.count + 1
      sell.save!
      sell.count = sell.count - 1
      sell.save!
    end
  end
end
