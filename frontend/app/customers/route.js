import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('customer');
  },

  setupController: function(controller, model) {
    controller.set('attrs.customers', model);
  }
});
