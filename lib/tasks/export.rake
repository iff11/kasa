require 'csv'

namespace :export do
  desc "Export customers to CSV"
  task customers: :environment do
    file_name = './customers.csv'
    column_names = ['first_name', 'last_name', 'birth', 'mail', 'phone']

    data = CSV.generate() do |csv|
      csv << column_names
      Customer.all.each do |c|
        csv << c.attributes.values_at(*column_names)
      end
    end

    File.open(file_name, "w+") do |f|
      f.write(data)
    end
  end
end
