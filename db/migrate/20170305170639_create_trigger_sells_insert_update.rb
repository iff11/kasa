# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerSellsInsertUpdate < ActiveRecord::Migration
  def up
    create_trigger("create_or_update_revenue_a", :generated => true, :compatibility => 1).
        on("sells").
        after(:insert, :update).
        name("create_or_update_revenue_a") do
      <<-SQL_ACTIONS
      INSERT INTO revenues (visit_id, entity_id, amount, created_at, updated_at) VALUES
      (
        NEW.visit_id,
        NEW.entity_id,
        (SELECT SUM(count * price) FROM sells WHERE entity_id = NEW.entity_id AND visit_id = NEW.visit_id),
        NOW(),
        NOW()
      ) ON CONFLICT (visit_id, entity_id) DO UPDATE SET
        amount = (SELECT SUM(count * price) FROM sells WHERE entity_id = NEW.entity_id AND visit_id = NEW.visit_id),
        created_at = NOW(),
        updated_at = NOW();
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("create_or_update_revenue_a", "sells", :generated => true)
  end
end
