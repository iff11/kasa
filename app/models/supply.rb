class Supply < ApplicationRecord
  acts_as_paranoid

  belongs_to :item

  trigger.after(:insert, :update, :delete).name('fix_items_bought') do
    <<-SQL
      UPDATE items SET bought = (
        SELECT COALESCE(SUM(quantity), 0) FROM supplies WHERE supplies.deleted_at IS NULL AND supplies.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
    SQL
  end

end
