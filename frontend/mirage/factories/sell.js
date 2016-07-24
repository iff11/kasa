import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  count() {
    return faker.random.number(10);
  },
  price() {
    return faker.random.number(100);
  }
});
