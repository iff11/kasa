import Ember from 'ember';

export default Ember.Controller.extend({
  visits: function() {
    return this.store.findAll('visit');
  }.property(),

  customers: function() {
    return this.store.findAll('customer');
  }.property()
});
