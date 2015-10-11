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
end
