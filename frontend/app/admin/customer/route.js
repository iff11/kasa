import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('customer', params.id);
  },

  setupController: function(controller, model) {
    controller.set('attrs.customer', model);
  },

  actions: {
    deleteCustomer: function(customer) {
      var flash = Ember.get(this, 'flashes'),
          that = this;

      customer.deleteRecord();
      customer.save().then(function() {
        flash.success('Customer deleted');
        that.transitionTo('admin.customers');
      }, function(response) {
        flash.danger('Customer cannot be deleted! ' + response.responseText);
      });
    },

    rollbackCustomer: function(customer) {
      customer.rollback();
      this.transitionTo('admin.customers');
    },

    updateCustomer: function(customer) {
      var flash = Ember.get(this, 'flashes'),
          that = this;

      customer.save().then(function() {
        flash.success('Customer updated');
        }, function(response) {
        flash.danger('Customer cannot be updated! ' + response.responseText);
      });
    }
  }
});
