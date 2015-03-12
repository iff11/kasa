import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: [],

  customers: function() {
    return this.store.find('customer');
  }.property(),

  actions: {
    createVisit: function() {
      var customer_id = this.get('newVisitCustomer');
      var that = this;

      this.store.find('customer', customer_id).then(
        function(result) {
          var visit = that.store.createRecord('visit', {
            customer: result
          });
          visit.save();
        },
        function() {}
      );
    }
  }
});
