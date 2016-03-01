import DS from 'ember-data';
import Ember from 'ember';

export default DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  note: DS.attr('string'),
  birth: DS.attr('date'),
  phone: DS.attr('string'),
  mail: DS.attr('string'),
  visitsCount: DS.attr('number', { defaultValue: 0 }),
  lastVisitDate: DS.attr('date'),
  visits: DS.hasMany('visit', { async: true }),

  'fullName': Ember.computed('firstName', 'lastName', function() {
    return `${this.get('firstName')} ${this.get('lastName')}`;
  }),

  nextBirthday: Ember.computed('birth', function() {
    let birth = this.get('birth');
    if (Ember.isNone(birth)) {
      return undefined;
    }

    let nextBirthDay = moment(birth).year(moment().year());

    if (moment().diff(nextBirthDay) > 0) {
      nextBirthDay.add('1', 'years');
    }

    return nextBirthDay;
  }),

  daysTillNextBirthday: Ember.computed('nextBirthday', function() {
    let nextBirthday = this.get('nextBirthday');

    if (Ember.isNone(nextBirthday)) {
      // This is a little hack needed to be able to sort by this property
      // It's not possible to have birthday in 366 days and it's fine to
      // sort those records at the end of list by having so big value there.
      return 366;
    } else {
      return nextBirthday.diff(moment(), 'days');
    }
  })
});
