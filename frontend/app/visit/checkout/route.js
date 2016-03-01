import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.modelFor('visit');
  },

  setupController(controller, model) {
    controller.set('attrs.visit', model);
  }
});
