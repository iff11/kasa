import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',

  sum: function() {
    return this.get('visit.sells').reduce(function(previousValue, sell){
        return previousValue + sell.get("sellPrice");
      }, 0);
  }.property('visit.sells.@each.count', 'visit.sells.@each.price')
});
