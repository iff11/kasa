# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerVisitsUpdate < ActiveRecord::Migration
  def up
    drop_trigger("visits_after_update_row_tr", "visits", :generated => true)

    create_trigger("visits_after_update_row_tr", :generated => true, :compatibility => 1).
        on("visits").
        after(:update) do
      <<-SQL_ACTIONS
      INSERT INTO cashbook_entries (company_id, visit_id, amount, touched_at, kind, created_at, updated_at) VALUES
      (
        (SELECT company_id FROM visits LEFT JOIN employees ON (visits.employee_id = employees.id) WHERE visits.id = NEW.id),
        NEW.id,
        NEW.paid_in_cash,
        NOW(),
        0,
        NEW.created_at,
        NEW.updated_at
      ) ON CONFLICT (visit_id) DO UPDATE SET
        amount = NEW.paid_in_cash,
        touched_at = NOW();
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("visits_after_update_row_tr", "visits", :generated => true)

    create_trigger("visits_after_update_row_tr", :generated => true, :compatibility => 1).
        on("visits").
        after(:update) do
      <<-SQL_ACTIONS
      INSERT INTO cashbook_entries (company_id, visit_id, amount, touched_at, kind, created_ad, updated_at) VALUES
      (
        (SELECT company_id FROM visits LEFT JOIN employees ON (visits.employee_id = employees.id) WHERE visits.id = NEW.id),
        NEW.id,
        NEW.paid_in_cash,
        NOW(),
        0,
        NEW.created_at,
        NEW.updated_at
      ) ON CONFLICT (visit_id) DO UPDATE SET
        amount = NEW.paid_in_cash,
        touched_at = NOW();
      SQL_ACTIONS
    end
  end
end
