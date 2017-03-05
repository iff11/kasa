class CashbookEntry < ApplicationRecord
  default_scope { order(touched_at: :desc) }

  enum kind: {
    visit: 0,
    manual: 1
  }

  belongs_to :company
  belongs_to :visit

  trigger.after(:insert, :update, :delete) do
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
