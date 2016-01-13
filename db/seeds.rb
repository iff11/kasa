customers = Customer.create(
  [
    { first_name: 'Michal', last_name: 'Bryxí', note: 'Me, me and only me', birth: (Date.today - 365 + 90).to_s },
    { first_name: 'No', last_name: 'BirthDay', note: 'No birth date #1', birth: '' },
    { first_name: 'John', last_name: 'Doe', note: 'Male', birth: (Date.today - 365 + 30).to_s },
    { first_name: 'Jane', last_name: 'Doe', note: 'Female', birth: (Date.today - 365 + 7).to_s },
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
    { first_name: 'Junior', last_name: 'Stylist', photo_url: 'http://placekitten.com/g/32/32' },
    { first_name: 'Senior', last_name: 'Stylist', photo_url: 'http://placekitten.com/g/64/64' },
    { first_name: 'Top', last_name: 'Stylist', photo_url: 'http://placekitten.com/g/128/128' }
  ]
)

users = User.create(
  [
    { email: 'salon@topstylesalon.cz', password: 'salon@topstylesalon.cz', is_admin: true },
    { email: 'kadernik@topstylesalon.cz', password: 'kadernik@topstylesalon.cz', is_admin: false }
  ]
)

visits = Visit.create(
  [
    { note: 'Joyful visit', customer: customers[0], employee: employees[0] },
    { note: 'John Doe is here', customer: customers[1], employee: employees[1] }
  ]
)

items = Item.create(
  [
    { name: 'Shampoo', description: 'Makes you a shampoo', selling_price: 123.4, unlimited: false, barcode: '20150001' },
    { name: 'Haircut', description: 'Simply by scissors', selling_price: 100.0, unlimited: true, barcode: '20150002' },
    { name: 'Hair color', description: 'Intensive mega color creme', selling_price: 999.0, unlimited: false },
    { name: 'Condicioner', description: 'Intensive mega color creme condicioner', selling_price: 100.0, unlimited: false }
  ]
)

sells = Sell.create(
  [
    {item: items[0], visit: visits[0], count: 1, price: 234},
    {item: items[1], visit: visits[1], count: 15, price: 567}
  ]
)
