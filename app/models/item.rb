class Item < ActiveRecord::Base
  acts_as_paranoid

  default_scope { order('unlimited', 'name') }

  has_many :sells

  def actual_count
    sold = nil

    return nil if stock == nil

    if !sells.nil?
      sold = sells.sum(:count)
    end

    stock - sold
  end
end
