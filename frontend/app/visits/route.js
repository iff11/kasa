import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    var visitsQuery = { filter: { completed: false } };
    var visits = this.store.filter(
      'visit',
      visitsQuery,
      function (visit) {
        return !visit.get('completed');
      }
    );

    var employeesQuery = { filter: { isActive: true } };
    var employees = this.store.filter(
      'employee',
      employeesQuery,
      function (employee) {
        return employee.get('isActive');
      }
    );

    var customers = this.store.findAll('customer');

    return Ember.RSVP.hash({
      employees: employees,
      visits: visits,
      customers: customers
    });
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model.visits);
    controller.set('attrs.employees', model.employees);
    controller.set('attrs.customers', model.customers);
  }
});
