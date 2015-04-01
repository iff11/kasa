import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['sidebar'],

  // TODO: this should not be here!!!
  // this should be passed into component as attribute, but this would
  // fail as unauthorized user should not create any HTTP request
  visits: function() {
    return this.get('targetObject.store').find('visit');
  }.property(),

  // TODO: this should not be here!!!
  customers: function() {
    return this.get('targetObject.store').find('customer');
  }.property(),

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
