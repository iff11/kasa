import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  count(i) {
    return faker.random.number(10);
  },
  price(i) {
    return faker.random.number(100);
  }
});
