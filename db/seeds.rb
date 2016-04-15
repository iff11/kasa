### Basics

customers = Customer.create(
  [
    { first_name: 'Michal', last_name: 'Bryxí', note: 'Me, me and only me', birth: (Date.today - 30.years).to_s },
    { first_name: 'John', last_name: 'Doe', note: 'Male', birth: (Date.today - 23.years - 30.days).to_s },
    { first_name: 'Jane', last_name: 'Doe', note: 'Female', birth: (Date.today - 22.years + 30.days).to_s },
    { first_name: 'No', last_name: 'BirthDay', note: 'No birth date #1', birth: '' },
    { first_name: 'Alpha', last_name: '', note: '', birth: '1989-11-02' },
    { first_name: 'Beta', last_name: '', note: '', birth: '1900-10-03' },
    { first_name: 'No', last_name: 'BirthDay', note: 'No birth date #2', birth: '' },
    { first_name: 'Gamma', last_name: '', note: '', birth: '1900-09-10' },
    { first_name: 'Delta', last_name: '', note: '', birth: '1978-03-22' },
    { first_name: 'No', last_name: 'BirthDay', note: 'No birth date #3', birth: '' },
  ]
)

employees = Employee.create(
  [
    { first_name: 'Junior', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/a' },
    { first_name: 'Senior', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/b' },
    { first_name: 'Top', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/c' },
  ]
)

users = User.create(
  [
    { email: 'salon@kasa.pudr.com', password: 'salon@kasa.pudr.com', is_admin: true },
    { email: 'kadernik@kasa.pudr.com', password: 'kadernik@kasa.pudr.com', is_admin: false }
  ]
)

items = Item.create(
  [
    { name: 'Shampoo', selling_price: 123.4, unlimited: false, barcode: '20150001' },
    { name: 'Haircut', selling_price: 100.0, unlimited: true, barcode: '20150002' },
    { name: 'Hair color', selling_price: 999.0, unlimited: false },
    { name: 'Condicioner', selling_price: 100.0, unlimited: false, warning_threshold: 10 },
    { name: 'DiaRichesse', selling_price: 100.0, unlimited: false, warning_threshold: 10 }
  ]
)

### Opened visits

visits_opened = Visit.create(
  [
    { note: 'Opened visit #1', customer: customers[0], employee: employees[0] },
    { note: 'Opened visit #2', customer: customers[1], employee: employees[1] },
    { note: 'Opened visit #3', customer: customers[2], employee: employees[2] },
  ]
)

sells = Sell.create(
  [
    {item: items[0], visit: visits_opened[0], count: 1, price: 234},
    {item: items[1], visit: visits_opened[1], count: 5, price: 678},
    {item: items[2], visit: visits_opened[2], count: 9, price: 012},
  ]
)

### Closed visits

visits_closed = []

customers.length.times do |c|
  e = c.modulo(employees.length)

  visit = Visit.create(note: "Closed visit #{c}", customer: customers[c], employee: employees[e], completed: true)

  visits_closed << visit
end

visits_closed.each_index do |v|
  i = v.modulo(items.length)
  Sell.create(item: items[i], visit: visits_closed[v], count: v * 2, price: v * 10)
end
