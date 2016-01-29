import Ember from 'ember';

export default Ember.Route.extend({
  model: function () {
    var id = this.paramsFor('visit').id;

    return Ember.RSVP.hash({
      visit: this.store.findRecord('visit', id),
      items: this.store.peekAll('item')
    });
  },

  setupController: function(controller, model) {
    controller.set('attrs.visit', model.visit);
    controller.set('attrs.items', model.items);
  },

  actions: {
    willTransition: function(transition) {
      if (this.controller.get('isDirty')) {
        transition.abort();
        Ember.get(this, 'flashMessages').danger(this.t('visit.isDirty'));
      } else {
        return true;
      }
    }
  }
});
