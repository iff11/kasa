import Ember from 'ember';

export default Ember.Component.extend({
  openVisits: function() {
    if(this.get('visits')) {
      return this.get('visits').filterBy('completed', false);
    }
  }.property('visits.@each.completed'),

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

  actions: {
    logout: function() {
      this.sendAction('logout');
    }
  }
});
