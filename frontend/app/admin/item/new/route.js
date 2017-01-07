import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({
      entities: this.store.findAll('entity')
    });
  },

  setupController(controller, model) {
    controller.setProperties({
      'attrs.entities': model.entities,
      'heap.entity': model.entities.get('firstObject')
    });
  }
});
