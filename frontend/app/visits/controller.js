import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: [],

  customers: function() {
    return this.store.find('customer');
  }.property(),

  employees: function() {
    return this.store.find('employee');
  }.property(),

  actions: {
    createVisit: function() {
      var customer_id = this.get('newVisitCustomer');
      var employee_id = this.get('newVisitEmployee')
      var that = this;

      this.store.find('customer', customer_id).then(
        function(result) {
          var visit = that.store.createRecord('visit', {
            customer: result,
            employee: employee_id
          });
          visit.save();
        },
        function() {}
      );
    }
  }
});
