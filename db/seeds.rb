User.create!([
  {id: 38, email: "demo@beauty-pay.cz", password: "demo@beauty-pay.cz", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1664, current_sign_in_at: "2017-02-07 13:03:10", last_sign_in_at: "2017-02-07 13:03:10", current_sign_in_ip: "90.178.88.2", last_sign_in_ip: "90.178.88.2", authentication_token: "RTpasHK6B2W29VU5C6RY", deleted_at: nil, company_id: 3, role: 1}
])
Item.create!([
  {id: 1324, name: "Šamponová lázeň na barvené vlasy", selling_price: 900.0, unlimited: false, barcode: "9876543", deleted_at: nil, bought: 10, sold: 0, warning_threshold: 1, last_supply_id: 4562, is_active: true, is_service: false, company_id: 3, entity_id: 4},
  {id: 1320, name: "Dámský střih - krátké vlasy", selling_price: 150.0, unlimited: true, barcode: "3", deleted_at: nil, bought: 0, sold: 1, warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company_id: 3, entity_id: 4},
  {id: 1317, name: "Pánský střih", selling_price: 200.0, unlimited: true, barcode: "1", deleted_at: nil, bought: 0, sold: 4, warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company_id: 3, entity_id: 4},
  {id: 1321, name: "Střih vousů", selling_price: 100.0, unlimited: true, barcode: "12", deleted_at: nil, bought: 0, sold: 7, warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company_id: 3, entity_id: 4},
  {id: 1319, name: "Dámský střih - dlouhé vlasy", selling_price: 300.0, unlimited: true, barcode: "2", deleted_at: nil, bought: 0, sold: 4, warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company_id: 3, entity_id: 4},
  {id: 1322, name: "Nasazení pásku", selling_price: 10.0, unlimited: true, barcode: "33", deleted_at: nil, bought: 0, sold: 30, warning_threshold: 0, last_supply_id: nil, is_active: true, is_service: true, company_id: 3, entity_id: 4},
  {id: 1323, name: "Šampon na barvené vlasy", selling_price: 600.0, unlimited: false, barcode: "4567890", deleted_at: nil, bought: 40, sold: 6, warning_threshold: 5, last_supply_id: 4561, is_active: true, is_service: false, company_id: 3, entity_id: 4},
  {id: 1325, name: "Inoa 7,31", selling_price: 10.0, unlimited: false, barcode: "23456789", deleted_at: nil, bought: 120, sold: 21, warning_threshold: 60, last_supply_id: 4563, is_active: true, is_service: false, company_id: 3, entity_id: 4}
])
Sell.create!([
  {id: 17838, item_id: 1320, visit_id: 6170, count: 1, price: 150.0, deleted_at: nil, entity_id: 4},
  {id: 18626, item_id: 1317, visit_id: 6423, count: 1, price: 200.0, deleted_at: nil, entity_id: 4},
  {id: 18623, item_id: 1317, visit_id: 6421, count: 1, price: 200.0, deleted_at: nil, entity_id: 4},
  {id: 18249, item_id: 1317, visit_id: 6178, count: 1, price: 200.0, deleted_at: nil, entity_id: 4},
  {id: 17801, item_id: 1317, visit_id: 6153, count: 1, price: 200.0, deleted_at: nil, entity_id: 4},
  {id: 18628, item_id: 1321, visit_id: 6424, count: 2, price: 100.0, deleted_at: nil, entity_id: 4},
  {id: 18625, item_id: 1321, visit_id: 6422, count: 1, price: 100.0, deleted_at: nil, entity_id: 4},
  {id: 18624, item_id: 1321, visit_id: 6421, count: 1, price: 100.0, deleted_at: nil, entity_id: 4},
  {id: 18515, item_id: 1321, visit_id: 6388, count: 1, price: 100.0, deleted_at: nil, entity_id: 4},
  {id: 17849, item_id: 1321, visit_id: 6177, count: 1, price: 100.0, deleted_at: nil, entity_id: 4},
  {id: 17840, item_id: 1321, visit_id: 6171, count: 1, price: 100.0, deleted_at: nil, entity_id: 4},
  {id: 18741, item_id: 1319, visit_id: 6472, count: 1, price: 300.0, deleted_at: nil, entity_id: 4},
  {id: 18627, item_id: 1319, visit_id: 6424, count: 1, price: 300.0, deleted_at: nil, entity_id: 4},
  {id: 18540, item_id: 1319, visit_id: 6394, count: 1, price: 300.0, deleted_at: nil, entity_id: 4},
  {id: 17847, item_id: 1319, visit_id: 6176, count: 1, price: 300.0, deleted_at: nil, entity_id: 4},
  {id: 18743, item_id: 1322, visit_id: 6472, count: 30, price: 10.0, deleted_at: nil, entity_id: 4},
  {id: 18742, item_id: 1323, visit_id: 6472, count: 1, price: 600.0, deleted_at: nil, entity_id: 4},
  {id: 18629, item_id: 1323, visit_id: 6426, count: 2, price: 600.0, deleted_at: nil, entity_id: 4},
  {id: 18541, item_id: 1323, visit_id: 6394, count: 1, price: 600.0, deleted_at: nil, entity_id: 4},
  {id: 18250, item_id: 1323, visit_id: 6178, count: 1, price: 600.0, deleted_at: nil, entity_id: 4},
  {id: 17839, item_id: 1323, visit_id: 6170, count: 1, price: 600.0, deleted_at: nil, entity_id: 4},
  {id: 18725, item_id: 1325, visit_id: 6465, count: 1, price: 10.0, deleted_at: nil, entity_id: 4},
  {id: 18542, item_id: 1325, visit_id: 6178, count: 10, price: 10.0, deleted_at: nil, entity_id: 4},
  {id: 17848, item_id: 1325, visit_id: 6177, count: 10, price: 10.0, deleted_at: nil, entity_id: 4}
])
Supply.create!([
  {id: 1, purchase_price: 0.0, quantity: 0, item_id: 7, vat: 21, deleted_at: nil},
  {id: 2, purchase_price: 0.0, quantity: 0, item_id: 46, vat: 21, deleted_at: nil},
  {id: 53, purchase_price: 0.0, quantity: 1, item_id: 3, vat: 21, deleted_at: nil},
  {id: 332, purchase_price: 57.0, quantity: 3, item_id: 427, vat: 21, deleted_at: nil},
  {id: 339, purchase_price: 0.0, quantity: 0, item_id: 9, vat: 21, deleted_at: nil},
  {id: 341, purchase_price: 0.0, quantity: 3, item_id: 4, vat: 21, deleted_at: nil},
  {id: 466, purchase_price: 0.0, quantity: 10, item_id: 1, vat: 21, deleted_at: nil},
  {id: 478, purchase_price: 229.5, quantity: 1, item_id: 232, vat: 21, deleted_at: nil},
  {id: 490, purchase_price: 100.0, quantity: 123, item_id: 5, vat: 21, deleted_at: nil},
  {id: 516, purchase_price: 0.0, quantity: 0, item_id: 10, vat: 21, deleted_at: nil},
  {id: 517, purchase_price: 0.0, quantity: 0, item_id: 280, vat: 21, deleted_at: nil},
  {id: 518, purchase_price: 0.0, quantity: 0, item_id: 6, vat: 21, deleted_at: nil},
  {id: 519, purchase_price: 0.0, quantity: 0, item_id: 8, vat: 21, deleted_at: nil},
  {id: 553, purchase_price: 0.0, quantity: 0, item_id: 494, vat: 21, deleted_at: nil},
  {id: 585, purchase_price: 0.0, quantity: 0, item_id: 496, vat: 21, deleted_at: nil},
  {id: 589, purchase_price: 0.0, quantity: 0, item_id: 2, vat: 21, deleted_at: nil},
  {id: 4561, purchase_price: 300.0, quantity: 40, item_id: 1323, vat: 21, deleted_at: nil},
  {id: 4562, purchase_price: 500.0, quantity: 10, item_id: 1324, vat: 21, deleted_at: nil},
  {id: 4563, purchase_price: 2.4, quantity: 120, item_id: 1325, vat: 21, deleted_at: nil}
])
Entity.create!([
  {id: 4, name: "Nové s.r.o.", company_id: 3, invoice_header: nil},
  {id: 5, name: "New entity", company_id: 3, invoice_header: nil}
])
Customer.create!([
  {id: 3465, first_name: "Karel", last_name: "Funda", note: nil, birth: "1972-01-01", phone: nil, mail: nil, deleted_at: nil, visits_count: 8, last_visit_date: "2017-02-27 13:03:30", gender: nil, company_id: 3, is_approved: true},
  {id: 3464, first_name: "Klára", last_name: "Nováková", note: nil, birth: "1987-02-01", phone: nil, mail: nil, deleted_at: nil, visits_count: 8, last_visit_date: "2017-02-27 13:03:30", gender: 1, company_id: 3, is_approved: true},
  {id: 3442, first_name: "Jan", last_name: "Novák", note: "Má rád presso bez cukru bez mléka", birth: "1985-07-05", phone: "723501243", mail: "novakhonza1@gmail.com", deleted_at: nil, visits_count: 18, last_visit_date: "2017-02-27 13:03:30", gender: 0, company_id: 3, is_approved: true}
])
Visit.create!([
  {id: 6153, note: "Dneska byla změna - vzadu a strany strojkem", customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "250.0", received_cash: "250.0", price: "200.0", employee_share_sale: "0.0", employee_share_service: "20.0", paid_by_card: "0.0", paid_in_cash: "250.0"},
  {id: 6170, note: nil, customer_id: 3464, employee_id: 55, completed: true, deleted_at: nil, price_with_tip: "750.0", received_cash: "750.0", price: "750.0", employee_share_sale: "60.0", employee_share_service: "15.0", paid_by_card: "0.0", paid_in_cash: "750.0"},
  {id: 6171, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "100.0", received_cash: "0.0", price: "100.0", employee_share_sale: "0.0", employee_share_service: "10.0", paid_by_card: "100.0", paid_in_cash: "0.0"},
  {id: 6176, note: nil, customer_id: 3465, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "350.0", received_cash: "400.0", price: "300.0", employee_share_sale: "0.0", employee_share_service: "30.0", paid_by_card: "0.0", paid_in_cash: "350.0"},
  {id: 6177, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "200.0", received_cash: "200.0", price: "200.0", employee_share_sale: "10.0", employee_share_service: "10.0", paid_by_card: "0.0", paid_in_cash: "200.0"},
  {id: 6178, note: nil, customer_id: 3442, employee_id: 55, completed: true, deleted_at: nil, price_with_tip: "900.0", received_cash: "900.0", price: "900.0", employee_share_sale: "70.0", employee_share_service: "20.0", paid_by_card: "0.0", paid_in_cash: "900.0"},
  {id: 6179, note: nil, customer_id: 3464, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "100.0", received_cash: "0.0", price: "0.0", employee_share_sale: "0.0", employee_share_service: "0.0", paid_by_card: "100.0", paid_in_cash: "0.0"},
  {id: 6388, note: nil, customer_id: 3465, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "100.0", received_cash: "0.0", price: "100.0", employee_share_sale: "0.0", employee_share_service: "10.0", paid_by_card: "2000.0", paid_in_cash: "-1900.0"},
  {id: 6394, note: "", customer_id: 3465, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "1000.0", received_cash: "1000.0", price: "900.0", employee_share_sale: "60.0", employee_share_service: "30.0", paid_by_card: "0.0", paid_in_cash: "1000.0"},
  {id: 6421, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "300.0", received_cash: "0.0", price: "300.0", employee_share_sale: "0.0", employee_share_service: "30.0", paid_by_card: "300.0", paid_in_cash: "0.0"},
  {id: 6422, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "100.0", received_cash: "0.0", price: "100.0", employee_share_sale: "0.0", employee_share_service: "10.0", paid_by_card: "200.0", paid_in_cash: "-100.0"},
  {id: 6423, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "200.0", received_cash: "0.0", price: "200.0", employee_share_sale: "0.0", employee_share_service: "20.0", paid_by_card: "200.0", paid_in_cash: "0.0"},
  {id: 6424, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "500.0", received_cash: "0.0", price: "500.0", employee_share_sale: "0.0", employee_share_service: "50.0", paid_by_card: "500.0", paid_in_cash: "0.0"},
  {id: 6425, note: nil, customer_id: 3442, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "0.0", received_cash: "0.0", price: "0.0", employee_share_sale: "0.0", employee_share_service: "0.0", paid_by_card: "0.0", paid_in_cash: "0.0"},
  {id: 6426, note: nil, customer_id: 3464, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "1200.0", received_cash: "0.0", price: "1200.0", employee_share_sale: "120.0", employee_share_service: "0.0", paid_by_card: "1200.0", paid_in_cash: "0.0"},
  {id: 6465, note: nil, customer_id: 3465, employee_id: 54, completed: true, deleted_at: nil, price_with_tip: "10.0", received_cash: "0.0", price: "10.0", employee_share_sale: "1.0", employee_share_service: "0.0", paid_by_card: "10.0", paid_in_cash: "0.0"},
  {id: 6472, note: nil, customer_id: 3464, employee_id: 55, completed: false, deleted_at: nil, price_with_tip: "0.0", received_cash: "0.0", price: "1200.0", employee_share_sale: "60.0", employee_share_service: "60.0", paid_by_card: "0.0", paid_in_cash: "0.0"}
])
Employee.create!([
  {id: 54, first_name: "Karolína", last_name: "Hezká", photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ0mk0OimYgpp7qDUrd2FA8FUamMBQoWAu7kXwYhevd63bqectjZA", deleted_at: nil, is_active: true, company_id: 3},
  {id: 55, first_name: "Prokop", last_name: "Buben", photo_url: "data:image/jpeg;base64,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", deleted_at: nil, is_active: true, company_id: 3}
])
Company.create!([
  {id: 3, name: "DEMO", is_invoice_printing_active: false, invoice_header: "Moskevská 56, Karlovy Vary\nwww.HairDesignMoskevska.cz\nFacebook: Hair Design Moskevská\ntel.: 725 079 468\n\n\nPatriot KV, s. r. o. - IČO 29164095,\nspisová značka C28201 vedená u KS v Plzni.\nZávodu Míru 125/117, 360 17 Karlovy Vary", invoice_logo: nil, cashbook_balance: "1450.0"}
])
CashbookEntry.create!([
  {id: 12, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6423},
  {id: 1, amount: "250.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6153},
  {id: 8, amount: "-100.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6422},
  {id: 15, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6421},
  {id: 6, amount: "-1900.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6388},
  {id: 39, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6171},
  {id: 24, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6424},
  {id: 3, amount: "350.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6176},
  {id: 42, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6472},
  {id: 60, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6426},
  {id: 7, amount: "1000.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6394},
  {id: 2, amount: "750.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6170},
  {id: 72, amount: "0.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6465},
  {id: 5, amount: "900.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6178},
  {id: 4, amount: "200.0", kind: 0, touched_at: "2017-02-27 13:04:14", note: nil, company_id: 3, visit_id: 6177}
])
Status.create!([
  {id: 1, name: "Table row count", value: "[\n  {\n    \"table\": \"visits\",\n    \"rows\": \"2772\"\n  },\n  {\n    \"table\": \"customers\",\n    \"rows\": \"2487\"\n  },\n  {\n    \"table\": \"items\",\n    \"rows\": \"796\"\n  },\n  {\n    \"table\": \"sells\",\n    \"rows\": \"484\"\n  },\n  {\n    \"table\": \"supplies\",\n    \"rows\": \"84\"\n  },\n  {\n    \"table\": \"schema_migrations\",\n    \"rows\": \"3\"\n  },\n  {\n    \"table\": \"users\",\n    \"rows\": \"2\"\n  },\n  {\n    \"table\": \"statuses\",\n    \"rows\": \"0\"\n  },\n  {\n    \"table\": \"employees\",\n    \"rows\": \"0\"\n  }\n]"},
  {id: 2, name: "Table sizes", value: "[\n  {\n    \"Table\": \"visits\",\n    \"Size\": \"4864 kB\",\n    \"External Size\": \"400 kB\"\n  },\n  {\n    \"Table\": \"sells\",\n    \"Size\": \"2392 kB\",\n    \"External Size\": \"968 kB\"\n  },\n  {\n    \"Table\": \"items\",\n    \"Size\": \"2344 kB\",\n    \"External Size\": \"488 kB\"\n  },\n  {\n    \"Table\": \"customers\",\n    \"Size\": \"600 kB\",\n    \"External Size\": \"248 kB\"\n  },\n  {\n    \"Table\": \"supplies\",\n    \"Size\": \"336 kB\",\n    \"External Size\": \"168 kB\"\n  },\n  {\n    \"Table\": \"users\",\n    \"Size\": \"128 kB\",\n    \"External Size\": \"104 kB\"\n  },\n  {\n    \"Table\": \"employees\",\n    \"Size\": \"48 kB\",\n    \"External Size\": \"40 kB\"\n  },\n  {\n    \"Table\": \"statuses\",\n    \"Size\": \"32 kB\",\n    \"External Size\": \"24 kB\"\n  },\n  {\n    \"Table\": \"schema_migrations\",\n    \"Size\": \"32 kB\",\n    \"External Size\": \"24 kB\"\n  }\n]"}
])
