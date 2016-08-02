# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerSellsInsertUpdateDelete < ActiveRecord::Migration
  def up
    create_trigger("fix_items_sold", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update, :delete).
        name("fix_items_sold") do
      <<-SQL_ACTIONS
      UPDATE items SET sold = (
        SELECT SUM(count) FROM sells WHERE sells.deleted_at IS NULL AND sells.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("fix_items_sold", "sells", :generated => true)
  end
end
