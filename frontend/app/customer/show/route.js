import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.findRecord('customer', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.customer', model);
  }
});
