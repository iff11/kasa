import Ember from 'ember';

export default Ember.Route.extend({
  model: function () {
    var employeeId = this.paramsFor('admin.employee').id,
        year = this.paramsFor('admin.employee.year').year,
        month = this.paramsFor('admin.employee.year.month').month,
        query = {
          filter: {
            employee_id: employeeId,
            year: year,
            month: month
          },
          page: {
            size: 1000
          },
          include: 'customer,sells'
        };

    return this.store.find('visit', query);
  }
});
