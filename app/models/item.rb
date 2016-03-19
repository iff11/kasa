class Item < ActiveRecord::Base
  acts_as_paranoid

  has_many :sells
  has_many :supplies
  # belongs_to :last_supply
  belongs_to :last_supply, class_name: 'Supply'#, foreign_key: 'last_supply'

  def fix_sold
    new_sold = Sell.where(item_id: self.id).sum(:count)
    self.sold = new_sold
    self.save!
  end

  def fix_bought
    new_bought = Supply.where(item_id: self.id).sum(:quantity)
    self.bought = new_bought
    self.save!
  end

  # Looks like this is not working correctly
  # trigger.after(:update).of(:is_service).name('on_item_update_fix_sells_employee_share') do
  #   <<-SQL
  #     IF (OLD.is_service <> NEW.is_service) THEN
  #       UPDATE visits SET employee_share_sale =  (
  #         SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = visits.visit_id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
  #       WHERE visits.id IN (SELECT visits.id FROM visits LEFT JOIN sells ON sells.visit_id = visits.id WHERE sells.item_id = NEW.id);
  #
  #       UPDATE visits SET employee_share_service =  (
  #         SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = visits.visit_id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
  #       WHERE visits.id IN (SELECT visits.id FROM visits LEFT JOIN sells ON sells.visit_id = visits.id WHERE sells.item_id = NEW.id);
  #     END IF;
  #   SQL
  # end
end
