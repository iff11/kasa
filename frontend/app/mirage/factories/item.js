import Mirage, {faker} from 'ember-cli-mirage';

export default Mirage.Factory.extend({
  name() { return faker.commerce.productName(); }
  // bought(i) { return faker.number.between(1, 20); }
});
