import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  prefill: function() {
    this.set('sell.price', this.get('sell.item.sellingPrice'));
  }.observes('sell.item'),
});
