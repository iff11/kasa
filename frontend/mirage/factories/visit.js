import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  price_with_tip() {
    return faker.random.number({min: 1000, max: 9999});
  },
  receivedAmount() {
    return Math.ceil(this.price_with_tip / 50) * 50;
  },
  price() {
    return 0;
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
