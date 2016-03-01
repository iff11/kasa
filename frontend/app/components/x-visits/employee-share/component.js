import Ember from 'ember';

export default Ember.Component.extend({
  sumEmployeeShareService: Ember.computed('visits.@each.employeeShareService', function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit) {
        return previousValue + visit.get('employeeShareService');
      }, 0);
  }),

  sumEmployeeShareSale: Ember.computed('visits.@each.employeeShareSale', function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit) {
        return previousValue + visit.get('employeeShareSale');
      }, 0);
  }),

  sum: Ember.computed('visits.@each.total_price', function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit) {
        return previousValue + visit.get('employee_share');
      }, 0);
  })
});
