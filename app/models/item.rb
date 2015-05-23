class Item < ActiveRecord::Base
  acts_as_paranoid

  default_scope { order('unlimited', 'name') }

  has_many :sells
  has_many :supplies

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

  # Do not enable this. It will fuckup last_supply in ember because it will embed the data
  # belongs_to :last_supply, class_name: 'Supply', foreign_key: 'last_supply'
end
