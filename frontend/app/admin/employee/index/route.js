import Ember from 'ember';

export default Ember.Route.extend({
  beforeModel() {
    var employeeId = this.paramsFor('admin.employee').id,
        year = new Date().getFullYear(),
        month = new Date().getMonth() + 1;

    this.transitionTo('admin.employee.year.month', employeeId, year, month);
  }
});
