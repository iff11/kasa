import Ember from 'ember';

export default Ember.Component.extend({
  session: Ember.inject.service(),
  store: Ember.inject.service(),

  visits: Ember.computed(function() {
    let query = { filter: { completed: false } };

    return this.get('store').filter(
      'visit',
      query,
      function(visit) {
        return !visit.get('completed');
      }
    );
  }),

  birthdaysInWeek: Ember.computed('customers.[]', function() {
    if (this.get('customers')) {
      return this.get('customers').filter(function(customer) {
        let now = moment();
        let nextBirthday = customer.get('nextBirthday');

        if (Ember.isEmpty(nextBirthday)) {
          return false;
        }
        if (nextBirthday.diff(now, 'days') < 7) {
          return true;
        }
      });
    }
  })
});
