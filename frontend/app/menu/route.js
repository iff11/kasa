import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return Ember.RSVP.hash({
      visits: this.store.find('visit'),
      customers: this.store.find('customer')
    });
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model.visits);
    controller.set('attrs.customers', model.customers);
  }
});
