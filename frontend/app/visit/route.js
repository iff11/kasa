import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.find('visit', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.visit', model);
  }
});
