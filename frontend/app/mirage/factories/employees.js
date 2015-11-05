import Mirage, {faker} from 'ember-cli-mirage';

export default Mirage.Factory.extend({
  firstName() { return faker.commerce.product_name; },
  lastName() { return faker.commerce.product_name; },
});
