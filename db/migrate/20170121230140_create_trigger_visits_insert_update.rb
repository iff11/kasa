# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggerVisitsInsertUpdate < ActiveRecord::Migration
  def up
    drop_trigger("fix_money_in_cashbook", "visits", :generated => true)

    create_trigger("fix_money_in_cashbook", :generated => true, :compatibility => 1).
        on("visits").
        after(:insert, :update).
        name("fix_money_in_cashbook") do
      <<-SQL_ACTIONS
      INSERT INTO cashbooks (date, visit_id, company_id, paid_by_card, paid_in_cash, created_at, updated_at)
      VALUES (
        NEW.created_at,
        NEW.id,
        (SELECT company_id FROM employees WHERE employees.id = NEW.employee_id),
        (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits WHERE visits.id = NEW.id),
        (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits WHERE visits.id = NEW.id),
        NOW(),
        NOW()
      )
      ON CONFLICT (date, visit_id) DO UPDATE SET
        paid_by_card = (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits WHERE visits.id = NEW.id),
        paid_in_cash = (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits WHERE visits.id = NEW.id),
        updated_at = NOW();
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("fix_money_in_cashbook", "visits", :generated => true)

    create_trigger("fix_money_in_cashbook", :generated => true, :compatibility => 1).
        on("visits").
        after(:insert, :update).
        name("fix_money_in_cashbook") do
      <<-SQL_ACTIONS
      INSERT INTO cashbooks (date, visit_id, company_id, credit, cash, created_at, updated_at)
      VALUES (
        NEW.created_at,
        NEW.id,
        (SELECT company_id FROM employees WHERE employees.id = NEW.employee_id),
        (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits WHERE visits.id = NEW.id),
        (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits WHERE visits.id = NEW.id),
        NOW(),
        NOW()
      )
      ON CONFLICT (date, visit_id) DO UPDATE SET
        credit = (SELECT COALESCE(SUM(visits.paid_by_card), 0) FROM visits WHERE visits.id = NEW.id),
        cash = (SELECT COALESCE(SUM(visits.paid_in_cash), 0) FROM visits WHERE visits.id = NEW.id),
        updated_at = NOW();
      SQL_ACTIONS
    end
  end
end
