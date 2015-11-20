class FixLastVisits < ActiveRecord::Migration
  def change
    Customer.all.each do |customer|
      customer.fix_last_visit
    end
  end
end
