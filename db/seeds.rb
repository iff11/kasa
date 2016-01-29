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
    { first_name: 'Junior', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/a' },
    { first_name: 'Senior', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/b' },
    { first_name: 'Top', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/c' },
    { first_name: 'Mirek 0', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/d' },
    { first_name: 'Mirek 1', last_name: 'stylist', photo_url: 'http://api.adorable.io/avatars/64/e' },
    { first_name: 'Mirek 2', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/f' },
    { first_name: 'Mirek 3', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/g' },
    { first_name: 'Mirek 4', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/h' },
    { first_name: 'Mirek 5', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/i' },
    { first_name: 'Mirek 6', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/j' },
    { first_name: 'Mirek 7', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/k' },
    { first_name: 'Mirek 8', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/l' },
    { first_name: 'Mirek 9', last_name: 'Stylist', photo_url: 'http://api.adorable.io/avatars/64/m' }
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
    { note: 'John Doe is here 1', customer: customers[1], employee: employees[1], completed: true },
    { note: 'John Doe is here 2', customer: customers[2], employee: employees[2], completed: true },
    { note: 'Nice visit', customer: customers[3], employee: employees[3] },
    { note: 'Dummy visit', customer: customers[4], employee: employees[4] },
    { note: 'John Doe is here 5', customer: customers[5], employee: employees[5], completed: true },
    { note: 'John Doe is here 6', customer: customers[6], employee: employees[6], completed: true },
    { note: 'John Doe is here 7', customer: customers[7], employee: employees[7], completed: true },
    { note: 'John Doe is here 8', customer: customers[8], employee: employees[8], completed: true },
    { note: 'John Doe is here 9', customer: customers[9], employee: employees[9], completed: true },
    { note: 'John Doe is here 10', customer: customers[0], employee: employees[10], completed: true },
    { note: 'Hey hou', customer: customers[1], employee: employees[11] },
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
