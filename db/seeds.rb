companies = Company.create!([
  {
    name: "DEMO",
    is_invoice_printing_active: true,
    invoice_header: "Adresa 123, Plzeň\nwww.beauty-pay.cz\nFacebook: beauty-pay.cz\ntel.: 123 456 789",
    invoice_logo: "http://bit.ly/2lB1l4d",
  }
])

User.create!([
  {
    email: "demo@beauty-pay.cz",
    password: "demo@beauty-pay.cz",
    company: companies[0],
    role: 1
  },
  {
    email: "kadernik@beauty-pay.cz",
    password: "kadernik@beauty-pay.cz",
    company: companies[0],
    role: 0
  },
  {
    email: "registrace@beauty-pay.cz",
    password: "registrace@beauty-pay.cz",
    company: companies[0],
    role: 2
  }
])

certificate_path = Rails.root.join('bin', 'cert', 'EET_CA1_Playground-CZ00000019.p12')
certificate = IO.binread(certificate_path)

entities = Entity.create!([
  {name: "beauty-pay.cz s.r.o.", company: companies[0], invoice_header: "IČO: 123456789", vatid: "CZ00000019", premisesid: "123", registerid: "456", certificate: certificate, certificate_password: "eet", send_eet: true},
  {name: "druhá firma s.r.o.", company: companies[0], invoice_header: "IČO: 987654321"}
])

items = Item.create!([
  {name: "Šamponová lázeň na barvené vlasy", selling_price: 900.0, unlimited: false, barcode: "9876543", warning_threshold: 1, is_active: true, is_service: false, company: companies[0], entity: entities[0]},
  {name: "Dámský střih - krátké vlasy", selling_price: 150.0, unlimited: true, barcode: "3", warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company: companies[0], entity: entities[0]},
  {name: "Pánský střih", selling_price: 200.0, unlimited: true, barcode: "1", warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company: companies[0], entity: entities[0]},
  {name: "Střih vousů", selling_price: 100.0, unlimited: true, barcode: "12", warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company: companies[0], entity: entities[0]},
  {name: "Dámský střih - dlouhé vlasy", selling_price: 300.0, unlimited: true, barcode: "2", warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company: companies[0], entity: entities[0]},
  {name: "Nasazení pásku", selling_price: 10.0, unlimited: true, barcode: "33", warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company: companies[0], entity: entities[0]},
  {name: "Šampon na barvené vlasy", selling_price: 600.0, unlimited: false, barcode: "4567890", warning_threshold: 5, is_active: true, is_service: false, company: companies[0], entity: entities[0]},
  {name: "Inoa 7,31", selling_price: 10.0, unlimited: false, barcode: "23456789", warning_threshold: 60, is_active: true, is_service: false, company: companies[0], entity: entities[1]}
])

now = DateTime.now - 33.years
customers = Customer.create!([
  {first_name: "Karel", last_name: "Funda", note: nil, birth: now + 1.day, phone: nil, mail: nil, gender: nil, company: companies[0], is_approved: true},
  {first_name: "Klára", last_name: "Nováková", note: nil, birth: now + 1.week, phone: nil, mail: nil, gender: 1, company: companies[0], is_approved: true},
  {first_name: "Jan", last_name: "Novák", note: "Má rád presso bez cukru bez mléka", birth: now + 1.month, phone: "723501243", mail: "novakhonza1@gmail.com", gender: 0, company: companies[0], is_approved: true}
])

employees = Employee.create!([
  {first_name: "Karolína", last_name: "Hezká", photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ0mk0OimYgpp7qDUrd2FA8FUamMBQoWAu7kXwYhevd63bqectjZA", is_active: true, company: companies[0]},
  {first_name: "Prokop", last_name: "Buben", photo_url: "https://s-media-cache-ak0.pinimg.com/736x/15/d6/d8/15d6d8761fb566122edd26c2eeeeb994.jpg", is_active: true, company: companies[0]}
])

m1d = Time.now - 1.days
m2d = Time.now - 2.days
m3d = Time.now - 3.days
m1w = Time.now - 1.weeks
m2w = Time.now - 2.weeks
m3w = Time.now - 3.weeks
m1m = Time.now - 1.months
m2m = Time.now - 2.months
m3m = Time.now - 3.months

visits = Visit.create!([
  {note: "Dneska byla změna - vzadu a strany strojkem", customer: customers[0], employee: employees[0], completed: true},
  {note: nil, customer: customers[1], employee: employees[1], completed: true},
  {note: nil, customer: customers[2], employee: employees[0], completed: true},
  {created_at: m1d, note: nil, customer: customers[0], employee: employees[1], completed: true},
  {created_at: m2d, note: nil, customer: customers[1], employee: employees[0], completed: true},
  {created_at: m3d, note: nil, customer: customers[2], employee: employees[1], completed: true},
  {created_at: m1w, note: nil, customer: customers[0], employee: employees[0], completed: true},
  {created_at: m2w, note: nil, customer: customers[1], employee: employees[1], completed: true},
  {created_at: m3w, note: nil, customer: customers[2], employee: employees[0], completed: true},
  {created_at: m1m, note: nil, customer: customers[0], employee: employees[1], completed: true},
  {created_at: m2m, note: nil, customer: customers[1], employee: employees[0], completed: true},
  {created_at: m3m, note: nil, customer: customers[2], employee: employees[1], completed: true},
  {created_at: m1d, note: nil, customer: customers[0], employee: employees[0], completed: true},
  {created_at: m2d, note: nil, customer: customers[1], employee: employees[1], completed: true},
  {created_at: m3d, note: nil, customer: customers[2], employee: employees[0], completed: true},
  {created_at: m1w, note: nil, customer: customers[0], employee: employees[1], completed: true},
  {created_at: m2w, note: nil, customer: customers[1], employee: employees[0], completed: false}
])

Sell.create!([
  {item: items[0], visit: visits[0], count: 1, price: 150.0, entity: entities[0]},
  {item: items[1], visit: visits[1], count: 1, price: 200.0, entity: entities[0]},
  {item: items[2], visit: visits[2], count: 1, price: 200.0, entity: entities[0]},
  {item: items[3], visit: visits[3], count: 1, price: 200.0, entity: entities[0]},
  {item: items[4], visit: visits[4], count: 1, price: 200.0, entity: entities[0]},
  {item: items[5], visit: visits[5], count: 2, price: 100.0, entity: entities[0]},
  {item: items[6], visit: visits[6], count: 1, price: 100.0, entity: entities[0]},
  {item: items[7], visit: visits[7], count: 1, price: 100.0, entity: entities[1]},
  {item: items[0], visit: visits[8], count: 1, price: 100.0, entity: entities[0]},
  {item: items[1], visit: visits[9], count: 1, price: 100.0, entity: entities[0]},
  {item: items[2], visit: visits[10], count: 1, price: 100.0, entity: entities[0]},
  {item: items[3], visit: visits[11], count: 1, price: 300.0, entity: entities[0]},
  {item: items[4], visit: visits[12], count: 1, price: 300.0, entity: entities[0]},
  {item: items[5], visit: visits[13], count: 1, price: 300.0, entity: entities[0]},
  {item: items[6], visit: visits[14], count: 1, price: 300.0, entity: entities[0]},
  {item: items[7], visit: visits[15], count: 30, price: 10.0, entity: entities[1]},
  {item: items[0], visit: visits[16], count: 1, price: 600.0, entity: entities[0]},
  {item: items[1], visit: visits[0], count: 2, price: 600.0, entity: entities[0]},
  {item: items[2], visit: visits[1], count: 1, price: 600.0, entity: entities[0]},
  {item: items[3], visit: visits[2], count: 1, price: 600.0, entity: entities[0]},
  {item: items[4], visit: visits[3], count: 1, price: 600.0, entity: entities[0]},
  {item: items[5], visit: visits[4], count: 1, price: 10.0, entity: entities[0]},
  {item: items[6], visit: visits[5], count: 10, price: 10.0, entity: entities[0]},
  {item: items[7], visit: visits[6], count: 10, price: 10.0, entity: entities[1]}
])

def roundup(number, power = 100.0)
  (number / power).ceil * power
end

Visit.all.each do |visit|
  visit.price_with_tip = roundup(visit.price)
  by_card = [0, 25, 50, 100].sample.to_f
  visit.paid_by_card = (by_card / 100) * visit.price_with_tip
  visit.paid_in_cash = visit.price_with_tip - visit.paid_by_card
  visit.received_cash = roundup(visit.paid_in_cash)
  visit.save!
end

Supply.create!([
  {purchase_price: 0.0, quantity: 0, item: items[0], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[1], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 1, item: items[2], vat: 21, deleted_at: nil},
  {purchase_price: 57.0, quantity: 3, item: items[3], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[4], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 3, item: items[5], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 10, item: items[6], vat: 21, deleted_at: nil},
  {purchase_price: 229.5, quantity: 1, item: items[7], vat: 21, deleted_at: nil},
  {purchase_price: 100.0, quantity: 123, item: items[0], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[1], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[2], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[3], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[4], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[5], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[6], vat: 21, deleted_at: nil},
  {purchase_price: 0.0, quantity: 0, item: items[7], vat: 21, deleted_at: nil},
  {purchase_price: 300.0, quantity: 40, item: items[0], vat: 21, deleted_at: nil},
  {purchase_price: 500.0, quantity: 10, item: items[1], vat: 21, deleted_at: nil},
  {purchase_price: 2.4, quantity: 120, item: items[2], vat: 21, deleted_at: nil}
])

CashbookEntry.create!([
  {amount: -123.0, kind: 1, touched_at: Time.now, note: "Zaplacená pizza", company: companies[0]},
  {amount: 100.0, kind: 1, touched_at: m1w, note: "Vklad od managera", company: companies[0]}
])
