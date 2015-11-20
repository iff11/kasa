import Ember from 'ember';

export default Ember.Route.extend({
  model: function (params) {
    return this.store.find('customer', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.customer', model);
  }
});
