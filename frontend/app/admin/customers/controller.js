import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  heap: {},

  actions: {
    createCustomer: function() {
      var customer = this.store.createRecord('customer', {
        first_name: this.get('heap.firstName'),
        last_name: this.get('heap.lastName'),
        birth: this.get('heap.birth'),
        phone: this.get('heap.phone'),
        mail: this.get('heap.mail')
      });

      var that = this;
      var flash = Ember.get(this, 'flashes');

      customer.save().then(function() {
        that.set('heap', {});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    },

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
