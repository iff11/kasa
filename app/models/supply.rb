class Supply < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  # counter_culture :item, column_name: 'bought', delta_column: 'quantity'

  after_save :fix_bought
  after_destroy :fix_bought
  after_restore :fix_bought

  def fix_bought
    self.item.fix_bought
  end
end
