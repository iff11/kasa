class Sell < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  belongs_to :visit

  after_save :fix_sold
  after_destroy :fix_sold
  after_restore :fix_sold

  # TODO: get previous data and fix those too
  def fix_sold
    self.item.fix_sold
  end

  trigger.after(:insert, :update, :delete).name('fix_sells_price') do
    <<-SQL
      UPDATE visits SET price = (SELECT COALESCE(SUM(price * count), 0) FROM sells WHERE visit_id = NEW.visit_id AND deleted_at IS NULL) WHERE visits.id = NEW.visit_id;
    SQL
  end

  trigger.after(:insert, :update, :delete).name('fix_sells_employee_share_sale') do
    <<-SQL
      UPDATE visits SET employee_share_sale = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
        WHERE visits.id = NEW.visit_id;
    SQL
  end

  trigger.after(:insert, :update, :delete).name('fix_sells_employee_share_service') do
    <<-SQL
      UPDATE visits SET employee_share_service = (
        SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = NEW.visit_id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
        WHERE visits.id = NEW.visit_id;
    SQL
  end
end
