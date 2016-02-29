import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    let visitsQuery = { filter: { completed: false } };
    let visits = this.store.filter(
      'visit',
      visitsQuery,
      function(visit) {
        return !visit.get('completed');
      }
    );

    let employeesQuery = { filter: { isActive: true } };
    let employees = this.store.filter(
      'employee',
      employeesQuery,
      function(employee) {
        return employee.get('isActive');
      }
    );

    let customers = this.store.findAll('customer');

    return Ember.RSVP.hash({
      employees,
      visits,
      customers
    });
  },

  setupController(controller, model) {
    controller.set('attrs.visits', model.visits);
    controller.set('attrs.employees', model.employees);
    controller.set('attrs.customers', model.customers);
  }
});
