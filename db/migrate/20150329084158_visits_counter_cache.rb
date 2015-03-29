class VisitsCounterCache < ActiveRecord::Migration
  def change
    add_column :customers, :visits_count, :integer

    Customer.all.each do |customer|
      customer.reset_counters(:visits)
    end
  end
end
