import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.all('visit');
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model);
  }
});
