import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  heap: {
    unlimited: false
  },

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
      var flash = Ember.get(this, 'flashMessages');

      item.save().then(function() {
        that.set('heap', {unlimited: false});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    },
  }
});
