import Mirage, {faker} from 'ember-cli-mirage';

export default Mirage.Factory.extend({
  //'is-active'() {return faker.list.cycle(true, false);},
  name(i) { return 'item '+ _.padLeft(i, 3, "0"); },
  'selling-price'(i) { return 2*i;},
  bought(i) {return 100-i;},
  sold(i) {return i;},
  // bought(i) { return faker.number.between(1, 20); }
});
