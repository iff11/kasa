# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggersSellsInsertUpdateV2 < ActiveRecord::Migration
  def up
    drop_trigger("fix_items_sold", "sells", :generated => true)

    drop_trigger("fix_sells_price", "sells", :generated => true)

    drop_trigger("fix_sells_employee_share_sale", "sells", :generated => true)

    drop_trigger("fix_sells_employee_share_service", "sells", :generated => true)

    create_trigger("fix_items_sold", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update).
        name("fix_items_sold") do
      <<-SQL_ACTIONS
      UPDATE items SET sold = (
        SELECT COALESCE(SUM(count), 0) FROM sells WHERE sells.deleted_at IS NULL AND sells.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
      SQL_ACTIONS
    end

    create_trigger("fix_sells_price", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update).
        name("fix_sells_price") do
      "      UPDATE visits SET price = (SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL) WHERE visits.id = NEW.visit_id;"
    end

    create_trigger("fix_sells_employee_share_sale", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update).
        name("fix_sells_employee_share_sale") do
      <<-SQL_ACTIONS
      UPDATE visits SET employee_share_sale = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
        WHERE visits.id = NEW.visit_id;
      SQL_ACTIONS
    end

    create_trigger("fix_sells_employee_share_service", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update).
        name("fix_sells_employee_share_service") do
      <<-SQL_ACTIONS
      UPDATE visits SET employee_share_service = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
        WHERE visits.id = NEW.visit_id;
      SQL_ACTIONS
    end

  end

  def down
    drop_trigger("fix_items_sold", "sells", :generated => true)

    drop_trigger("fix_sells_price", "sells", :generated => true)

    drop_trigger("fix_sells_employee_share_sale", "sells", :generated => true)

    drop_trigger("fix_sells_employee_share_service", "sells", :generated => true)

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

    create_trigger("fix_sells_price", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update, :delete).
        name("fix_sells_price") do
      "      UPDATE visits SET price = (SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL) WHERE visits.id = NEW.visit_id;"
    end

    create_trigger("fix_sells_employee_share_sale", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update, :delete).
        name("fix_sells_employee_share_sale") do
      <<-SQL_ACTIONS
      UPDATE visits SET employee_share_sale = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
        WHERE visits.id = NEW.visit_id;
      SQL_ACTIONS
    end

    create_trigger("fix_sells_employee_share_service", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update, :delete).
        name("fix_sells_employee_share_service") do
      <<-SQL_ACTIONS
      UPDATE visits SET employee_share_service = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
        WHERE visits.id = NEW.visit_id;
      SQL_ACTIONS
    end
  end
end
