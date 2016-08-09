class AddGenderToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :gender, :integer, default: 0

    Customer.all.each do |customer|
      l = customer.last_name

      if l and (l.end_with?("ova") or l.end_with?("ová"))
        customer.gender = "female"
      else
        customer.gender = "male"
      end

      customer.save
    end
  end
end
