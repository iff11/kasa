import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('customer');
  },

  setupController(controller, model) {
    controller.set('attrs.customers', model);
  },

  actions: {
    createCustomer() {
      let customer = this.store.createRecord('customer', {
        firstName: 'John',
        lastName: 'Doe'
      });

      let that = this;
      let flash = Ember.get(this, 'flashMessages');

      customer.save().then(function(newCustomer) {
        flash.success('Successfully saved!');
        that.transitionTo('admin.customer', newCustomer);
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
