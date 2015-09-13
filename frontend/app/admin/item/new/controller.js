import Ember from 'ember';

export default Ember.Controller.extend({
  heap: {
    unlimited: false,
    isActive: true,
  },

  actions: {
    createItem: function() {
      var item = this.store.createRecord('item', {
        name: this.get('heap.name'),
        barcode: this.get('heap.barcode'),
        stock: this.get('heap.stock'),
        // purchase_price: this.get('heap.purchase_price'),
        // sellingPrice: this.get('heap.sellingPrice'),
        unlimited: this.get('heap.unlimited'),
        isActive: this.get('heap.isActive'),
        warningThreshold: this.get('heap.warningThreshold')
      });

      var that = this;
      var flash = Ember.get(this, 'flashMessages');

      item.save().then(function() {
        that.set('heap', {unlimited: false});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    },
  }
});
