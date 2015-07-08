import Ember from 'ember';

export default Ember.Controller.extend({
  needs: ['application'],

  visits: function() {
    return this.store.all('visit');
  }.property(),

  customers: function() {
    return this.store.all('customer');
  }.property()
});

