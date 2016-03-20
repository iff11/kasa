import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  firstName() {
    return faker.name.firstName();
  },
  lastName() {
    return faker.name.lastName();
  },
  birth(i) {
    return moment().add(7 * (i+1), 'days').toDate();
  },
  nextBirthday(i) {
    return moment().add(7 * (i+1), 'days').toDate();
  },
  daysTillNextBirthday(i) {
    return (i+1) * 7;
  },
  note() {
    return faker.lorem.sentence();
  },
  visitsCount() {
    return faker.random.number(100);
  },
  lastVisitDate(i) {
    return faker.date.recent(365);
    // return moment().subtract(7 * i, 'days');
  },
  phone() {
    return faker.phone.phoneNumber();
  },
  mail() {
    return faker.internet.email();
  }
});
