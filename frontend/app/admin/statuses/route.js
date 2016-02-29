import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('status');
  },

  setupController(controller, model) {
    controller.set('attrs.statuses', model);
  }
});
