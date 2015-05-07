import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    console.log('foooo');
    return Ember.RSVP.hash({
      visits: this.store.find('visit'),
      customers: this.store.find('customer')
    });
  },

  setupController: function(controller, model) {
    console.log('foooo');
    controller.set('attrs.visits', model.visits);
    controller.set('attrs.customers', model.customers);
  }
});
