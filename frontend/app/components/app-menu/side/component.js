import Ember from 'ember';

export default Ember.Component.extend({
  birthdaysInWeek: function() {
    if(this.get('customers')) {
      return this.get('customers').filter(function(customer) {
        var now = moment(),
            nextBirthday = customer.get('nextBirthday');

        if(nextBirthday.diff(now, 'days') < 7) {
          return true;
        }
      });
    }
  }.property('customers.@each'),

  openedVisits: function() {
    if(this.get('visits')) {
      return this.get('visits').filterBy('completed', false);
    }
  }.property('visits.@each.completed'),

  actions: {
    logout: function() {
      this.sendAction('logout');
    }
  }
});
