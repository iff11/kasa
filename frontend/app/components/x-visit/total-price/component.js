import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',

  sum: Ember.computed('visit.sells.@each.count', 'visit.sells.@each.price', function() {
    return this.get('visit.sells').reduce(function(previousValue, sell) {
        return previousValue + sell.get('sum');
      }, 0);
  })
});
