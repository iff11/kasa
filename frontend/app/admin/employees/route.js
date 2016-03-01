import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('employee');
  },

  setupController(controller, model) {
    controller.set('attrs.employees', model);
  }
});
