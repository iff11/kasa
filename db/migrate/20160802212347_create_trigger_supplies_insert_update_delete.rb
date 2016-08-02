# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerSuppliesInsertUpdateDelete < ActiveRecord::Migration
  def up
    create_trigger("fix_items_bought", :generated => true, :compatibility => 1).
        on("supplies").
        after(:insert, :update, :delete).
        name("fix_items_bought") do
      <<-SQL_ACTIONS
      UPDATE items SET bought = (
        SELECT SUM(quantity) FROM supplies WHERE supplies.deleted_at IS NULL AND supplies.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("fix_items_bought", "supplies", :generated => true)
  end
end
