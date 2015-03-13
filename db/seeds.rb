# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

me = Customer.create(
  {
    first_name: 'Michal',
    last_name: 'Bryxí',
    note: 'Já a jenom já',
    birth: '1986-03-18'
  }
)

john = Customer.create(
  {
    first_name: 'John',
    last_name: 'Doe',
    note: 'Somebody',
    birth: '2001-05-18'
  }
)

jane = Customer.create(
  {
    first_name: 'Jane',
    last_name: 'Doe',
    note: 'Somebody',
    birth: '2001-09-18'
  }
)

my_visit = Visit.create(
  {
    note: 'Příjemná návštěva',
    customer: me,
  }
)

johns_visit = Visit.create(
  {
    note: 'John Doe je zde',
    customer: john,
  }
)


sampon = Item.create(
  {
    name: 'Šampón',
    description: 'Vytváří šampónky',
    default_price: 789.0,
    stock: 10,
    unlimited: false,
    barcode: '20055318'
  }
)

strihani = Item.create(
  {
    name: 'Stříhání standard',
    description: 'Prostě nůžkama',
    default_price: 100.0,
    unlimited: true,
    barcode: '203757723572'
  }
)

barva = Item.create(
  {
    name: 'Barva na vlasy',
    description: 'Intensive mega color creme',
    default_price: 999.0,
    stock: 1,
    unlimited: false
  }
)

kondicioner = Item.create(
  {
    name: 'Kondicioner',
    description: 'Intensive mega color creme',
    default_price: 123.0,
    stock: 3,
    unlimited: false
  }
)

Sell.create(
  [
    {item: sampon, visit: my_visit, count: 1, price: 234},
    {item: strihani, visit: my_visit, count: 2, price: 567}
  ]
)
