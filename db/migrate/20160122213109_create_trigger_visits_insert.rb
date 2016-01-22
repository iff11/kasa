# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerVisitsInsert < ActiveRecord::Migration
  def up
    create_trigger("visits_after_insert_row_tr", :generated => true, :compatibility => 1).
        on("visits").
        after(:insert) do
      "UPDATE customers SET last_visit_id = NEW.id WHERE customers.id = NEW.customer_id;"
    end
  end

  def down
    drop_trigger("visits_after_insert_row_tr", "visits", :generated => true)
  end
end
