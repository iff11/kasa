import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('item');
  },

  setupController(controller, model) {
    controller.set('attrs.items', model);
  }
});
