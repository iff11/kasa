class LastVisitToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :last_visit, :integer

    Customer.all.each do |customer|
      last_visit = Visit.where(customer_id: customer.id).order(created_at: :desc).first
      if !last_visit.nil?
        customer.last_visit = last_visit.id
        customer.save!
      end
    end
  end
end
