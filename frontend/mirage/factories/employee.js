import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  firstName() {
    return faker.name.firstName();
  },
  lastName() {
    return faker.name.lastName();
  },
  photoUrl() {
    return faker.internet.avatar();
  },
  isActive() {
    return true;
  }
});
