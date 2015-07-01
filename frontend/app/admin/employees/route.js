import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.all('employee');
  },

  setupController: function(controller, model) {
    controller.set('attrs.employees', model);
  }
});
