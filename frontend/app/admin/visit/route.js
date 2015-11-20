import Ember from 'ember';

export default Ember.Route.extend({
  model: function (params) {
    return this.store.find('visit', params.id);
  },

  setupController: function(controller, model) {
    controller.set('attrs.visit', model);
  },

  actions: {
    deleteVisit: function(visit) {
      var flash = Ember.get(this, 'flashMessages'),
          that = this,
          customer = visit.get('customer');

      visit.deleteRecord();
      visit.save().then(function() {
        flash.success('Visit deleted');
        that.transitionTo('admin.customer', customer);
      }, function(response) {
        flash.danger('Customer cannot be deleted! ' + response.responseText);
      });
    },

    reopenVisit: function(visit) {
      var flash = Ember.get(this, 'flashMessages'),
          that = this;

      visit.set('completed', false);
      visit.save().then(function(my_visit) {
        flash.success('Visit was reopened. Now we will take you to visit edit.');
        that.transitionTo('visit', my_visit);
      }, function(response) {
        flash.danger('Customer cannot be updated! ' + response.responseText);
      });
    }
  }
});
