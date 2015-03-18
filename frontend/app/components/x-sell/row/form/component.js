import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  prefill: function() {
    console.log(this.get('sell.item'));
    this.set('sell.price', this.get('sell.item.selling_price'));
  }.observes('sell.item'),
});
