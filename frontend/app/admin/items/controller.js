import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {
    unlimited: false
  },

  // newUnlimited: false,
  // setInfiniteStock: function() {
  //   if(this.get('newUnlimited') === true) {
  //     this.set('newStock', '∞');
  //   } else {
  //     this.set('newStock', 1)
  //   }
  // }.observes('newUnlimited'),


  actions: {
    createItem: function() {
      var item = this.store.createRecord('item', {
        name: this.get('heap.name'),
        barcode: this.get('heap.barcode'),
        stock: this.get('heap.stock'),
        purchase_price: this.get('heap.purchase_price'),
        selling_price: this.get('heap.selling_price'),
        unlimited: this.get('heap.unlimited')
      });

      var that = this;
      var flash = Ember.get(this, 'flashes');

      item.save().then(function() {
        that.set('heap', {unlimited: false});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    },

    deleteItem: function(item) {
      var flash = Ember.get(this, 'flashes');

      item.deleteRecord();
      item.save().then(function() {
        flash.success('Item deleted');
      }, function(response) {
        flash.danger('Item cannot be deleted! ' + response.responseText);
      });
    },

    updateItem: function(item) {
      var flash = Ember.get(this, 'flashes');

      item.save().then(function() {
        flash.success('Item updated');
      }, function(response) {
        flash.danger('Item cannot be updated! ' + response.responseText);
      });
    }
  }
});
