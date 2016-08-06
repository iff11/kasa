import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  price_with_tip(i) { return i; },
  receivedAmount(i) { return i; },
  price(i) {
    // TODO: This should be sum of all sells
    return (i + 1) + ((i+2) * 2 - 1);
  },
  note() {
    return faker.lorem.sentence();
  },
  employeeShareSale(i) { return i + 1; },
  employeeShareService(i) { return (i + 2) * 2 - 1; },
  completed() {
    return faker.random.boolean();
  },
  updatedAt() {
    return faker.date.past();
  }
});
