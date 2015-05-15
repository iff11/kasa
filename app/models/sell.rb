class Sell < ActiveRecord::Base
  acts_as_paranoid
  # before_destroy :fix_counter_culture

  belongs_to :item
  belongs_to :visit
  counter_culture :item, column_name: 'sold', delta_column: 'count'

  # def fix_counter_culture
  #   puts "hello!!!!!"
  #   self.counter_culture_fix_counts
  # end
end

