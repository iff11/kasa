import Ember from 'ember';

export default Ember.Component.extend({
  sum: function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit){
        return previousValue + visit.get("total_price");
      }, 0);
  }.property('visits.@each.total_price')
});
