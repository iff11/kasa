import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('status');
  },

  setupController: function(controller, model) {
    controller.set('attrs.statuses', model);
  }
});
