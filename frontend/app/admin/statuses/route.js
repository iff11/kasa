import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    this.store.findAll('admin/status');
  },

  setupController: function(controller, model) {
    controller.set('attrs.statuses', model);
  }
});
