class PopulateNewCompanyColumns < ActiveRecord::Migration
  def change
    Company.all.each do |company|
      src = company.invoice_header

      company.website = src.match(/www\..*\.cz/)[0] || ''
      company.address = src.match(/.*\d+,.*/)[0] || ''

      fb_match = src.match(/Facebook: (.*),/)
      if fb_match
        company.facebook = fb_match.captures[0]
      end

      phone_match = src.match(/(\d[\d ]{7,}\d)/)
      if phone_match
        company.phone = phone_match.captures[0]
      end

      company.save!
    end
  end
end
