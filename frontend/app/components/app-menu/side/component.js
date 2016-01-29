import Ember from 'ember';

export default Ember.Component.extend({
  store: Ember.inject.service(),

  visits: function () {
    var query = { filter: { completed: false } };

    return this.get('store').filter(
      'visit',
      query,
      function (visit) {
        return !visit.get('completed');
      }
    );
  }.property(),

  birthdaysInWeek: function() {
    if(this.get('customers')) {
      return this.get('customers').filter(function(customer) {
        var now = moment(),
            nextBirthday = customer.get('nextBirthday');

        if(Ember.isEmpty(nextBirthday)) {
          return false;
        }
        if(nextBirthday.diff(now, 'days') < 7) {
          return true;
        }
      });
    }
  }.property('customers.@each'),
});
