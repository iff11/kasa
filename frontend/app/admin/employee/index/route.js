import Ember from 'ember';

export default Ember.Route.extend({
  beforeModel() {
    let employeeId = this.paramsFor('admin.employee').id;
    let year = new Date().getFullYear();
    let month = new Date().getMonth() + 1;

    this.transitionTo('admin.employee.year.month', employeeId, year, month);
  }
});
