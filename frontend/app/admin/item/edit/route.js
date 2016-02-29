import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.find('item', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.item', model);
  }
});
