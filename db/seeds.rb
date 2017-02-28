companies = Company.create!([
  {
    name: "DEMO",
    is_invoice_printing_active: false,
    invoice_header: "Adresa 123, Plzeň\nwww.beauty-pay.cz\nFacebook: beauty-pay.cz\ntel.: 123 456 789",
    invoice_logo: "https://cdn.pixabay.com/photo/2012/04/11/16/06/scissors-28698_960_720.png",
  }
])

User.create!([
  {
    email: "demo@beauty-pay.cz",
    password: "demo@beauty-pay.cz",
    company: companies[0],
    role: 1
  }
])

entities = Entity.create!([
  {name: "Nové s.r.o.", company: companies[0], invoice_header: nil},
  {name: "New entity", company: companies[0], invoice_header: nil}
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

customers = Customer.create!([
  {first_name: "Karel", last_name: "Funda", note: nil, birth: "1972-01-01", phone: nil, mail: nil, gender: nil, company: companies[0], is_approved: true},
  {first_name: "Klára", last_name: "Nováková", note: nil, birth: "1987-02-01", phone: nil, mail: nil, gender: 1, company: companies[0], is_approved: true},
  {first_name: "Jan", last_name: "Novák", note: "Má rád presso bez cukru bez mléka", birth: "1985-07-05", phone: "723501243", mail: "novakhonza1@gmail.com", gender: 0, company: companies[0], is_approved: true}
])

employees = Employee.create!([
  {first_name: "Karolína", last_name: "Hezká", photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ0mk0OimYgpp7qDUrd2FA8FUamMBQoWAu7kXwYhevd63bqectjZA", is_active: true, company: companies[0]},
  {first_name: "Prokop", last_name: "Buben", photo_url: "http://maxpixel.freegreatpicture.com/static/photo/1x/Mustache-Model-Beard-Face-Portrait-Person-Man-1845166.jpg", is_active: true, company: companies[0]}
])

visits = Visit.create!([
  {note: "Dneska byla změna - vzadu a strany strojkem", customer: customers[0], employee: employees[0], completed: true, price_with_tip: "250.0", received_cash: "250.0", paid_by_card: "0.0", paid_in_cash: "250.0"},
  {note: nil, customer: customers[1], employee: employees[1], completed: true, price_with_tip: "750.0", received_cash: "750.0", paid_by_card: "0.0", paid_in_cash: "750.0"},
  {note: nil, customer: customers[2], employee: employees[0], completed: true, price_with_tip: "100.0", received_cash: "0.0", paid_by_card: "100.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[0], employee: employees[1], completed: true, price_with_tip: "350.0", received_cash: "400.0", paid_by_card: "0.0", paid_in_cash: "350.0"},
  {note: nil, customer: customers[1], employee: employees[0], completed: true, price_with_tip: "200.0", received_cash: "200.0", paid_by_card: "0.0", paid_in_cash: "200.0"},
  {note: nil, customer: customers[2], employee: employees[1], completed: true, price_with_tip: "900.0", received_cash: "900.0", paid_by_card: "0.0", paid_in_cash: "900.0"},
  {note: nil, customer: customers[0], employee: employees[0], completed: true, price_with_tip: "100.0", received_cash: "0.0", paid_by_card: "100.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[1], employee: employees[1], completed: true, price_with_tip: "100.0", received_cash: "0.0", paid_by_card: "2000.0", paid_in_cash: "-1900.0"},
  {note: nil, customer: customers[2], employee: employees[0], completed: true, price_with_tip: "1000.0", received_cash: "1000.0", paid_by_card: "0.0", paid_in_cash: "1000.0"},
  {note: nil, customer: customers[0], employee: employees[1], completed: true, price_with_tip: "300.0", received_cash: "0.0", paid_by_card: "300.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[1], employee: employees[0], completed: true, price_with_tip: "100.0", received_cash: "0.0", paid_by_card: "200.0", paid_in_cash: "-100.0"},
  {note: nil, customer: customers[2], employee: employees[1], completed: true, price_with_tip: "200.0", received_cash: "0.0", paid_by_card: "200.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[0], employee: employees[0], completed: true, price_with_tip: "500.0", received_cash: "0.0", paid_by_card: "500.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[1], employee: employees[1], completed: true, price_with_tip: "0.0", received_cash: "0.0", paid_by_card: "0.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[2], employee: employees[0], completed: true, price_with_tip: "1200.0", received_cash: "0.0", paid_by_card: "1200.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[0], employee: employees[1], completed: true, price_with_tip: "10.0", received_cash: "0.0", paid_by_card: "10.0", paid_in_cash: "0.0"},
  {note: nil, customer: customers[1], employee: employees[0], completed: false, price_with_tip: "0.0", received_cash: "0.0", paid_by_card: "0.0", paid_in_cash: "0.0"}
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
