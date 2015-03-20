class AddVisitCustomerCounterCache < ActiveRecord::Migration
  def change
    add_column :customers, :visits_count, :integer, :default => 0

    Customer.reset_column_information
    Customer.all().each do |customer|
      Customer.reset_counters(customer.id, :visits)
      # customer.update_attribute(:visits_count, customer.visits.count)
      # customer.save
    end
  end
end
