class Supply < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item

  # has_one :item

  after_save :fix_bought
  after_destroy :fix_bought
  after_restore :fix_bought

  def fix_bought
    self.item.fix_bought
  end
end
