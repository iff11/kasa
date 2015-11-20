class FixLastSupply < ActiveRecord::Migration
  def change
    Item.with_deleted.all.each do |item|
      if !item.supplies.last.nil?
        item.last_supply = item.supplies.last.id
        item.save!
      end
    end
  end
end
