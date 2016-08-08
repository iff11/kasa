import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  price_with_tip() {
    return faker.random.number({min: 1000, max: 9999});
  },
  receivedAmount() {
    return Math.ceil(this.price_with_tip / 50) * 50;
  },
  price() {
    // Will be re-calculated when new sell is added
    return 0;
  },
  employeeShareSale() {
    // Will be re-calculated when new sell is added
    return 0;
  },
  employeeShareService() {
    // Will be re-calculated when new sell is added
    return 0;
  },
  note() {
    return faker.lorem.sentence();
  },
  completed() {
    return faker.random.boolean();
  },
  updatedAt() {
    return faker.date.past();
  }

});
