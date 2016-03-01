import Ember from 'ember';

export default Ember.Component.extend({
  sum: Ember.computed('visits.@each.total_price', function() {
    return this.getWithDefault('visits', []).reduce(function(previousValue, visit) {
        return previousValue + visit.get('total_price');
      }, 0);
  })
});
