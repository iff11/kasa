import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['sidebar'],

  birthdaysInWeek: function() {
    return this.get('customers').filter(function(customer) {
      var now = moment(),
          nextBirthday = customer.get('nextBirthday');

      if(nextBirthday.diff(now, 'days') < 7) {
        return true;
      }
    });
  }.property('customers'),

  actions: {
    logout: function() {
      this.sendAction('logout');
    }
  }
});
