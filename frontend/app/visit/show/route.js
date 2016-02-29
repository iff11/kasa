import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    // jscs:disable requireObjectDestructuring
    let id = this.paramsFor('visit').id;
    // jscs:enable requireObjectDestructuring

    return Ember.RSVP.hash({
      visit: this.store.findRecord('visit', id),
      items: this.store.findAll('item')
    });
  },

  setupController(controller, model) {
    controller.set('attrs.visit', model.visit);
    controller.set('attrs.items', model.items);
  },

  actions: {
    willTransition(transition) {
      if (this.controller.get('isDirty')) {
        transition.abort();
        Ember.get(this, 'flashMessages').danger(this.t('visit.isDirty'));
      } else {
        return true;
      }
    }
  }
});
