# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggersVisitsInsertOrVisitsInsertUpdateDelete < ActiveRecord::Migration
  def up
    create_trigger("visits_before_insert_row_tr", :generated => true, :compatibility => 1).
        on("visits").
        before(:insert) do
      <<-SQL_ACTIONS
      INSERT INTO payslips (
        employee_id,
        period_id,
        created_at,
        updated_at
      ) VALUES (
        NEW.employee_id,
        (SELECT id FROM periods WHERE is_active = true),
        NOW(),
        NOW()
      ) ON CONFLICT DO NOTHING;

      NEW.payslip_id := (SELECT id FROM payslips WHERE
        employee_id = NEW.employee_id AND
        period_id = (SELECT id FROM periods WHERE is_active = true)
      );
      SQL_ACTIONS
    end

    create_trigger("visits_after_insert_update_delete_row_tr", :generated => true, :compatibility => 1).
        on("visits").
        after(:insert, :update, :delete) do
      <<-SQL_ACTIONS
      UPDATE payslips SET
        share_sale = (SELECT COALESCE(SUM(employee_share_sale)) FROM visits WHERE payslip_id = NEW.payslip_id),
        share_service = (SELECT COALESCE(SUM(employee_share_service)) FROM visits WHERE payslip_id = NEW.payslip_id)
      WHERE
        id = NEW.payslip_id;
      SQL_ACTIONS
    end
  end

  def down
    drop_trigger("visits_before_insert_row_tr", "visits", :generated => true)

    drop_trigger("visits_after_insert_update_delete_row_tr", "visits", :generated => true)
  end
end
