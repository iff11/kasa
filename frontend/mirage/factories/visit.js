import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  price_with_tip(i) { return i; },
  receivedAmount(i) { return i; },
  price(i) {
    // TODO: This should be sum of all sells
    return i * 100;
  },
  note() {
    return faker.lorem.sentence();
  },
  employeeShareSale(i) { return i; },
  employeeShareService(i) { return i; },
  completed() {
    return faker.random.boolean();
  },
  updatedAt() {
    return faker.date.past();
  }
});
