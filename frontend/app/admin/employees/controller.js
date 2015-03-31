import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {},

  actions: {
    createEmployee: function() {
      var employee = this.store.createRecord('employee', {
        first_name: this.get('heap.first_name'),
        last_name: this.get('heap.last_name'),
        birth: this.get('heap.birth'),
        phone: this.get('heap.phone'),
        mail: this.get('heap.mail'),
        note: this.get('heap.note')
      });

      var that = this;
      var flash = Ember.get(this, 'flashMessages');

      employee.save().then(function() {
        that.set('heap', {});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    },

    deleteEmployee: function(employee) {
      var flash = Ember.get(this, 'flashMessages');

      employee.deleteRecord();
      employee.save().then(function() {
        flash.success('Employee deleted');
      }, function(response) {
        flash.danger('Employee cannot be deleted! ' + response.responseText);
      });
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
