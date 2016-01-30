class FixSaleVsService < ActiveRecord::Migration
  def change
    Item.all.with_deleted.each do |item|
      out = item.name + " => "

      if item.unlimited
        item.is_service = true
      else
        item.is_service = false
      end

      heystack = ["Inoa", "Dialight", "DiaRichesse", "Majirel"]
      yep = heystack.any? { |needle| item.name.include? needle }

      if yep
        item.is_service = true
      end

      out += item.is_service.to_s
      puts out

      item.save!
    end
  end
end
