import Ember from 'ember';

export default Ember.Route.extend({
  setupController(controller) {
    controller.set('employeeId', this.paramsFor('admin.employee').id);
    controller.set('year', this.paramsFor('admin.employee.year').year);
  }
});
