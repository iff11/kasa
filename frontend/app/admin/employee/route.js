import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.find('employee', params.id);
  },

  setupController(controller, model) {
    controller.set('attrs.employee', model);
  },

  actions: {
    deleteEmployee(employee) {
      let flash = Ember.get(this, 'flashMessages');

      employee.deleteRecord();
      employee.save().then(function() {
        flash.success('Employee deleted');
      }, function(response) {
        flash.danger(`Employee cannot be deleted! ${response.responseText}`);
      });
    },

    rollbackEmployee(employee) {
      employee.rollbackAttributes();
      this.transitionTo('admin.employees');
    },

    updateEmployee(employee) {
      let flash = Ember.get(this, 'flashMessages');

      employee.save().then(function() {
        flash.success('Employee updated');
      }, function(response) {
        flash.danger(`Employee cannot be updated! ${response.responseText}`);
      });
    }
  }
});
