import Ember from 'ember';

export default Ember.Controller.extend({
  visits: function() {
    return this.store.find('visit');
  }.property(),

  customers: function() {
    return this.store.find('customer');
  }.property()
});

