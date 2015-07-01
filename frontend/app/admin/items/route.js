import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.all('item');
  },

  setupController: function(controller, model) {
    controller.set('attrs.items', model);
  }
});
