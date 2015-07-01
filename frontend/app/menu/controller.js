import Ember from 'ember';

export default Ember.Controller.extend({
  visits: function() {
    return this.store.all('visit');
  }.property(),

  customers: function() {
    return this.store.all('customer');
  }.property(),
});

