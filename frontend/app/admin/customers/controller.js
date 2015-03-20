import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  actions: {

    deleteCustomer: function(customer) {
      var flash = Ember.get(this, 'flashes');

      customer.deleteRecord();
      customer.save().then(function() {
        flash.success('Customer deleted');
      }, function(response) {
        flash.danger('Customer cannot be deleted! ' + response.responseText);
      });
    },

    updateCustomer: function(customer) {
      var flash = Ember.get(this, 'flashes');

      customer.save().then(function() {
        flash.success('Customer updated');
      }, function(response) {
        flash.danger('Customer cannot be updated! ' + response.responseText);
      });
    }
  }
});
