import Ember from 'ember';

export default Ember.Controller.extend({
  heap: {
    unlimited: false,
    is_active: true,
  },

  actions: {
    createItem: function() {
      var item = this.store.createRecord('item', {
        name: this.get('heap.name'),
        barcode: this.get('heap.barcode'),
        stock: this.get('heap.stock'),
        // purchase_price: this.get('heap.purchase_price'),
        // selling_price: this.get('heap.selling_price'),
        unlimited: this.get('heap.unlimited'),
        is_active: this.get('heap.is_active'),
        warningThreshold: this.get('heap.warningThreshold')
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
