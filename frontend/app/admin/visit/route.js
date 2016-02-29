import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.find('visit', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.visit', model);
  },

  actions: {
    deleteVisit(visit) {
      let flash = Ember.get(this, 'flashMessages');
      let that = this;
      let customer = visit.get('customer');

      visit.deleteRecord();
      visit.save().then(function() {
        flash.success('Visit deleted');
        that.transitionTo('admin.customer', customer);
      }, function(response) {
        flash.danger(`Customer cannot be deleted! ${response.responseText}`);
      });
    },

    reopenVisit(visit) {
      let flash = Ember.get(this, 'flashMessages');
      let that = this;

      visit.set('completed', false);
      visit.save().then(function(myVisit) {
        flash.success('Visit was reopened. Now we will take you to visit edit.');
        that.transitionTo('visit', myVisit);
      }, function(response) {
        flash.danger(`Customer cannot be updated! ${response.responseText}`);
      });
    }
  }
});
