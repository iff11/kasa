import Ember from 'ember';

export default Ember.Route.extend({
  model: function () {
    return this.modelFor('visit');
  },

  setupController: function(controller, model) {
    controller.set('attrs.visit', model);
  }
});
