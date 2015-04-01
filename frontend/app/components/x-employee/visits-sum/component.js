import Ember from 'ember';

export default Ember.Component.extend({
  ratio: 1,

  sum: function() {
    return this.get('employee.visits').reduce(function(previousValue, visit){
        return previousValue + visit.get("total_price");
      }, 0);
  }.property('employee.@each.total_price')
});
