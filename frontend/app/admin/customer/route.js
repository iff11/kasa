import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.find('customer', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.customer', model);
  },

  actions: {
    deleteCustomer(customer) {
      let flash = Ember.get(this, 'flashMessages');
      let that = this;

      customer.deleteRecord();
      customer.save().then(function() {
        flash.success('Customer deleted');
        that.transitionTo('admin.customers');
      }, function(response) {
        flash.danger(`Customer cannot be deleted! ${response.responseText }`);
      });
    },

    rollbackCustomer(customer) {
      customer.rollback();
      this.transitionTo('admin.customers');
    },

    updateCustomer(customer) {
      let flash = Ember.get(this, 'flashMessages');

      customer.save().then(function() {
        flash.success('Customer updated');
      }, function(response) {
        flash.danger(`Customer cannot be updated! ${response.responseText }`);
      });
    }
  }
});
