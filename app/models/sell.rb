class Sell < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  belongs_to :visit

  after_save :fix_sold
  after_destroy :fix_sold
  before_restore :fix_sold

  def fix_sold
    self.item.fix_sold
  end
end

