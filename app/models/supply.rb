class Supply < ActiveRecord::Base
  belongs_to :item

  after_save :fix_bought
  after_destroy :fix_bought

  def fix_bought
    self.item.fix_bought
  end
end
