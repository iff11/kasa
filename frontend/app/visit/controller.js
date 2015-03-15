import Ember from 'ember';
import formatMoney from "accounting/format-money"

export default Ember.Controller.extend({
  attrs: [],
  heap: {},

  actions: {
    createSell: function() {
      var sell = this.store.createRecord('sell', {
        item: this.get('heap.item'),
        visit: this.get('heap.visit'),
        price: this.get('heap.price'),
        count: this.get('heap.count')
      });

      var that = this;
      var flash = Ember.get(this, 'flashes');

      sell.save().then(function() {
        that.set('heap', {});
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
