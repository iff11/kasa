import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    let employeeId = this.paramsFor('admin.employee').id;
    let { year } = this.paramsFor('admin.employee.year').year;
    let { month } = this.paramsFor('admin.employee.year.month').month;
    let query = {
          filter: {
            'employee_id': employeeId,
            year,
            month
          },
          page: {
            size: 1000
          },
          include: 'customer,sells'
        };

    return this.store.find('visit', query);
  }
});
