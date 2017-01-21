class Sell < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  belongs_to :visit
  belongs_to :entity

  trigger.after(:insert, :update).name('fix_items_sold') do
    <<-SQL
      UPDATE items SET sold = (
        SELECT COALESCE(SUM(count), 0) FROM sells WHERE sells.deleted_at IS NULL AND sells.item_id = NEW.item_id
      ) WHERE items.id = NEW.item_id;
    SQL
  end

  trigger.after(:insert, :update).name('fix_sells_price') do
    <<-SQL
      UPDATE visits SET price = (SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL) WHERE visits.id = NEW.visit_id;
    SQL
  end

  trigger.after(:insert, :update).name('fix_sells_employee_share_sale') do
    <<-SQL
      UPDATE visits SET employee_share_sale = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
        WHERE visits.id = NEW.visit_id;
    SQL
  end

  trigger.after(:insert, :update).name('fix_sells_employee_share_service') do
    <<-SQL
      UPDATE visits SET employee_share_service = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
        WHERE visits.id = NEW.visit_id;
    SQL
  end

  # trigger.after(:insert, :update).name('fix_money_in_cashbook') do
  #   <<-SQL
  #     INSERT INTO cashbooks (date, entity_id, cash, credit)
  #     VALUES (
  #       NEW.created_at,
  #       SELECT entity_id from items LEFT JOIN sells ON sells.item_id = items.id WHERE sells.id = NEW.id,
  #
  #     )
  #     ON CONFLICT DO UPDATE;
  #   SQL
  # end
end
