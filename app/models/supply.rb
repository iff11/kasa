class Supply < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  counter_culture :item, column_name: 'bought', delta_column: 'quantity'
end
