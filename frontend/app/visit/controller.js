import Ember from 'ember';
import formatMoney from "accounting/format-money"

export default Ember.Controller.extend({
  attrs: [],

  heap: {},
  // heap: function() {
  //   return {
  //     visit: this.get('attrs.visit'),
  //     count: 1,
  //     price: 0
  //   };
  // }.property('attrs.visit'),

  items: function() {
    return this.store.find('item');
  }.property(),

  actions: {
    createSell: function() {

      var sell = this.store.createRecord('sell', {
        visit: this.get('attrs.visit'),
        item: thsi.get('heap.item'),
        count: this.get('heap.count'),
        price: this.get('heap.price')
      });

      var flash = Ember.get(that, 'flashes'),
          that = this;

      sell.save().then(function() {
        that.set('resetHeap', true);
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    },

    deleteSell: function(sell) {
      var flash = Ember.get(this, 'flashes');

      sell.deleteRecord();
      sell.save().then(function() {
        flash.success('Sell deleted');
      }, function(response) {
        flash.danger('Sell cannot be deleted! ' + response.responseText);
      });
    },

    updateSell: function(sell) {
      var flash = Ember.get(this, 'flashes');

      sell.save().then(function() {
        flash.success('Sell updated');
      }, function(response) {
        flash.danger('Sell cannot be updated! ' + response.responseText);
      });
    }
  }
});
