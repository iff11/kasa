import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.all('customer');
  },

  setupController: function(controller, model) {
    controller.set('attrs.customers', model);
  },

  actions: {
    createCustomer: function() {
      var customer = this.store.createRecord('customer', {
        firstName: 'John',
        lastName: 'Doe',
      });

      var that = this;
      var flash = Ember.get(this, 'flashMessages');

      customer.save().then(function(newCustomer) {
        flash.success('Successfully saved!');
        that.transitionTo('admin.customer', newCustomer);
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    }
  }
});
