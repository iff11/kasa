class Sell < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :item
  belongs_to :visit
  counter_culture :item, column_name: 'sold', delta_column: 'count'
end
