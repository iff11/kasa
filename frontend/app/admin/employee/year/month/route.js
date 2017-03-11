import Ember from 'ember';
import moment from 'moment';
import ENV from 'frontend/config/environment';

export default Ember.Route.extend({
  model() {
    let dateFormat = ENV.app.dateFormat;
    let employeeId = this.paramsFor('admin.employee').id;
    let year = this.paramsFor('admin.employee.year').year;
    let month = this.paramsFor('admin.employee.year.month').month;
    let selected = moment({ year: year, month: month, day: '01' });
    let from = selected.clone();
    let to = selected.clone().endOf('month');
    let query = {
          filter: {
            employee_id: employeeId,
            from: from.format(dateFormat),
            to: to.format(dateFormat)
          },
          page: {
            size: 1000
          },
          include: 'customer,sells'
        };

    return this.store.query('visit', query);
  }
});
