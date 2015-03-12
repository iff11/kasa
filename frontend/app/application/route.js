import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return {
      visits: this.store.find('visit'),
    };
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model.visits);
  }
});
