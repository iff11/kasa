import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  newUnlimited: false,
  setInfiniteStock: function() {
    if(this.get('newUnlimited') === true) {
      this.set('newStock', '∞');
    } else {
      this.set('newStock', 1)
    }
  }.observes('newUnlimited'),


  actions: {
    createItem: function() {
      var item = this.store.createRecord('item', {
        name: this.get('newName'),
        barcode: this.get('newBarcode'),
        stock: this.get('newStock'),
        default_price: this.get('newDefaultPrice'),
        unlimited: this.get('newUnlimited')
      });

      var that = this;
      var flash = Ember.get(this, 'flashes');

      item.save().then(function() {
        that.set('newName', null);
        that.set('newBarcode', null);
        that.set('newStock', null);
        that.set('newDefaultPrice', null);
        that.set('newUnlimited', null);
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
    }
  }
});
