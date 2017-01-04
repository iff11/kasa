class CreateDefaultCompany < ActiveRecord::Migration
  def change
    company = Company.new
    company.name = "Default company"
    company.save!

    [User, Item, Customer, Employee].each do |model|
      model.update_all company_id: company.id
    end
  end
end
