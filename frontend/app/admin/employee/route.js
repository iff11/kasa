import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('employee', params.id);
  },

  setupController: function(controller, model) {
    controller.set('attrs.employee', model);
  },

  actions: {
    deleteEmployee: function(employee) {
      var flash = Ember.get(this, 'flashMessages');

      employee.deleteRecord();
      employee.save().then(function() {
        flash.success('Employee deleted');
      }, function(response) {
        flash.danger('Employee cannot be deleted! ' + response.responseText);
      });
    },

    rollbackEmployee: function(employee) {
      employee.rollback();
      this.transitionTo('admin.employees');
    },

    updateEmployee: function(employee) {
      var flash = Ember.get(this, 'flashMessages');

      employee.save().then(function() {
        flash.success('Employee updated');
      }, function(response) {
        flash.danger('Employee cannot be updated! ' + response.responseText);
      });
    }
  }
});
