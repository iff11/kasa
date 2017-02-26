# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerCashbookEntriesInsertUpdateDelete < ActiveRecord::Migration
  def up
    drop_trigger("cashbook_entries_after_insert_update_delete_row_tr", "cashbook_entries", :generated => true)

    create_trigger("cashbook_entries_after_insert_update_delete_row_tr", :generated => true, :compatibility => 1).
        on("cashbook_entries").
        after(:insert, :update, :delete) do
      <<-SQL_ACTIONS
      IF TG_OP = 'DELETE' THEN
        UPDATE companies SET cashbook_balance = (SELECT SUM(amount) FROM cashbook_entries WHERE company_id = OLD.company_id) WHERE id = OLD.company_id;
      END IF;
      IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
        UPDATE companies SET cashbook_balance = (SELECT SUM(amount) FROM cashbook_entries WHERE company_id = NEW.company_id) WHERE id = NEW.company_id;
      END IF;
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("cashbook_entries_after_insert_update_delete_row_tr", "cashbook_entries", :generated => true)

    create_trigger("cashbook_entries_after_insert_update_delete_row_tr", :generated => true, :compatibility => 1).
        on("cashbook_entries").
        after(:insert, :update, :delete) do
      <<-SQL_ACTIONS
      IF TG_OP = 'DELETE' THEN
        UPDATE companies SET cashbook_balance = (SELECT SUM(amount) FROM cashbook_entries WHERE company_id = OLD.company_id) WHERE id = OLD.company_id;
      END IF;
      IF TG_OP = 'INSERT' OR TG_OP = 'CREATE' THEN
        UPDATE companies SET cashbook_balance = (SELECT SUM(amount) FROM cashbook_entries WHERE company_id = NEW.company_id) WHERE id = NEW.company_id;
      END IF;
      SQL_ACTIONS
    end
  end
end
