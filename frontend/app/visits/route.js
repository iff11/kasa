import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    var query = { filter: { completed: false } };

    return this.store.filter(
      'visit',
      query,
      function (visit) {
        return !visit.get('completed');
      }
    );
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model);
  }
});
