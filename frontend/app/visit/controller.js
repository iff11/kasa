import Ember from 'ember';
import formatMoney from "accounting/format-money"

export default Ember.Controller.extend({
  attrs: [],

  heap: {},

  resetHeap: function() {
    this.set('heap', {
      visit: this.get('attrs.visit'),
      count: 1,
      price: 0
    });
  }.on('init'),

  items: function() {
    return this.store.find('item');
  }.property(),

  itemsSorted: Ember.computed.sort('items', 'name'),

  actions: {
    createSell: function() {

      var sell = this.store.createRecord('sell', {
        visit: this.get('attrs.visit'),
        item: this.get('heap.item'),
        count: this.get('heap.count'),
        price: this.get('heap.price')
      });

      var flash = Ember.get(this, 'flashes'),
          that = this;

      sell.save().then(function() {
        that.resetHeap();
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
