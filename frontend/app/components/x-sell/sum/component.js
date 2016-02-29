import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',

  sum: Ember.computed('sell.count', 'sell.price', function() {
    return this.get('sell.count') * this.get('sell.price');
  })
});
