class AddCompanyIdKeys < ActiveRecord::Migration
  def change
    add_reference :users, :company, index: true
    add_reference :customers, :company, index: true
    add_reference :employees, :company, index: true
    add_reference :items, :company, index: true
  end
end
