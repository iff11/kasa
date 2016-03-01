import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  firstName() {
    return faker.commerce.product_name;
  },
  lastName() {
    return faker.commerce.product_name;
  }
});
