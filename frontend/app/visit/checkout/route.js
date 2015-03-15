import Ember from 'ember';

export default Ember.Route.extend({
  setupController: function(controller) {
    var model = this.modelFor('visit');
    controller.set('attrs.visit', model);
  }
});
