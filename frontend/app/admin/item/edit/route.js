import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return Ember.RSVP.hash({
      item: this.store.find('item', params.id),
      entities: this.store.findAll('entity')
    });
  },

  setupController(controller, model) {
    this._super(controller, model);
    controller.setProperties({
      'attrs.item': model.item,
      'attrs.entities': model.entities
    });
  }
});
