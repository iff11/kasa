import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: [],
  heap: {},

  customers: function() {
    return this.store.find('customer');
  }.property(),

  employees: function() {
    return this.store.find('employee');
  }.property(),

  actions: {
    createVisit: function() {
      var customer_id = this.get('heap.customer_id'),
          customer = this.store.find('customer', customer_id),
          that = this;

      // TODO: I don't really like the fact we need to wait for the promise to resolve
      customer.then(function(record) {
        var visit = that.store.createRecord('visit', {
          customer: record,
          employee: that.get('heap.employee')
        });
        visit.save();
      });
    }
  }
});
