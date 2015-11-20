class VisitsCounterCache < ActiveRecord::Migration
  def change
    add_column :customers, :visits_count, :integer

    Customer.all.each do |customer|
      Customer.reset_counters(customer.id, :visits)
    end
  end
end
