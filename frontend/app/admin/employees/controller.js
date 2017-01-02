import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {},

  employeesSorted: Ember.computed('attrs.employees.[]', function () {
    return this.get('attrs.employees').sortBy('isActive');
  }),

  currentPeriod: Ember.computed(function() {
    return this.get('attrs.periods').filterBy('isActive', true).get('firstObject');
  }),

  actions: {
    createEmployee() {
      let employee = this.store.createRecord('employee', {
        firstName: this.get('heap.firstName'),
        lastName: this.get('heap.lastName'),
        photoUrl: this.get('heap.photoUrl')
      });

      let that = this;
      let flash = Ember.get(this, 'flashMessages');

      employee.save().then(function() {
        that.set('heap', {});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
