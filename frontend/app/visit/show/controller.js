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
    return this.get('attrs.items').filterBy('isActive', true);
  }.property('attrs.items'),

  isDirty: function () {
    return !Ember.isEmpty(this.get('heap.item'));
  }.property('heap.item'),

  actions: {
    createSell: function() {

      var sell = this.store.createRecord('sell', {
        visit: this.get('attrs.visit'),
        item: this.get('heap.item'),
        count: this.get('heap.count'),
        price: this.get('heap.price')
      });

      var flash = Ember.get(this, 'flashMessages'),
          that = this;

      sell.save().then(function() {
        that.resetHeap();
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    },

    deleteSell: function(sell) {
      var flash = Ember.get(this, 'flashMessages');

      sell.deleteRecord();
      sell.save().then(function() {
        flash.success('Sell deleted');
      }, function(response) {
        flash.danger('Sell cannot be deleted! ' + response.responseText);
      });
    },

    updateSell: function(sell) {
      var flash = Ember.get(this, 'flashMessages');

      sell.save().then(function() {
        flash.success('Sell updated');
      }, function(response) {
        flash.danger('Sell cannot be updated! ' + response.responseText);
      });
    },

    saveNote: function() {
      var flash = Ember.get(this, 'flashMessages');

      this.get('attrs.visit').save().then(function() {
        flash.success('Note updated');
      }, function(response) {
        flash.danger('Note cannot be updated! ' + response.responseText);
      });
    }
  }
});
