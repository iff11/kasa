# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerVisitsInsertUpdate < ActiveRecord::Migration
  def up
    create_trigger("fix_money_in_cashbook", :generated => true, :compatibility => 1).
        on("visits").
        after(:insert, :update).
        name("fix_money_in_cashbook") do
      <<-SQL_ACTIONS
      INSERT INTO cashbooks (date, visit_id, company_id, credit, cash)
      VALUES (
        NEW.created_at,
        NEW.id,
        (SELECT company_id FROM employees WHERE employees.id = NEW.employee_id),
        (SELECT COALESCE(SUM(visit.paid_by_card), 0) FROM visits WHERE visit.id = NEW.id),
        (SELECT COALESCE(SUM(visit.paid_in_cash), 0) FROM visits WHERE visit.id = NEW.id)
      )
      ON CONFLICT DO UPDATE SET
        credit = (SELECT COALESCE(SUM(visit.paid_by_card), 0) FROM visits WHERE visit.id = NEW.id),
        cash = (SELECT COALESCE(SUM(visit.paid_in_cash), 0) FROM visits WHERE visit.id = NEW.id);
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("fix_money_in_cashbook", "visits", :generated => true)
  end
end
