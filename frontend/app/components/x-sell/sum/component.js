import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',
  
  sum: function() {
    return this.get('sell.count') * this.get('sell.price');
  }.property('sell.count', 'sell.price')
});
