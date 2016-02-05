import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  firstName() {
    return faker.name.firstName();
  },
  lastName() {
    return faker.name.lastName();
  },
  birth(i) {
    return moment().add(7 * (i+1), 'days');
  },
  note() {
    return faker.lorem.sentence();
  }
});
