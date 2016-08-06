# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggersSellsInsertUpdateDeleteOrSuppliesInsertUpdateDelete1 < ActiveRecord::Migration
  def up
    drop_trigger("fix_items_sold", "sells", :generated => true)

    drop_trigger("fix_items_bought", "supplies", :generated => true)

    create_trigger("fix_items_sold", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update, :delete).
        name("fix_items_sold") do
      <<-SQL_ACTIONS
      UPDATE items SET sold = (
        SELECT COALESCE(SUM(count), 0) FROM sells WHERE sells.deleted_at IS NULL AND sells.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end

    create_trigger("fix_items_bought", :generated => true, :compatibility => 1).
        on("supplies").
        after(:insert, :update, :delete).
        name("fix_items_bought") do
      <<-SQL_ACTIONS
      UPDATE items SET bought = (
        SELECT COALESCE(SUM(quantity), 0) FROM supplies WHERE supplies.deleted_at IS NULL AND supplies.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("fix_items_sold", "sells", :generated => true)

    drop_trigger("fix_items_bought", "supplies", :generated => true)

    create_trigger("fix_items_sold", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update, :delete).
        name("fix_items_sold") do
      <<-SQL_ACTIONS
      UPDATE items SET sold = (
        SELECT COLAESCE(SUM(count), 0) FROM sells WHERE sells.deleted_at IS NULL AND sells.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end

    create_trigger("fix_items_bought", :generated => true, :compatibility => 1).
        on("supplies").
        after(:insert, :update, :delete).
        name("fix_items_bought") do
      <<-SQL_ACTIONS
      UPDATE items SET bought = (
        SELECT COLAESCE(SUM(quantity), 0) FROM supplies WHERE supplies.deleted_at IS NULL AND supplies.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end
  end
end
