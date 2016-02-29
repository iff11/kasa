import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('customer');
  },

  setupController(controller, model) {
    controller.set('attrs.customers', model);
  }
});
