import Ember from 'ember';

export default Ember.Component.extend({
  sumEmployeeShareService: function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit){
        return previousValue + visit.get("employeeShareService");
      }, 0);
  }.property('visits.@each.employeeShareService'),

  sumEmployeeShareSale: function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit){
        return previousValue + visit.get("employeeShareSale");
      }, 0);
  }.property('visits.@each.employeeShareSale'),

  sum: function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit){
        return previousValue + visit.get("employee_share");
      }, 0);
  }.property('visits.@each.total_price')
});
