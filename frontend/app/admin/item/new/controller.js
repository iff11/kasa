import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  heap: {
    unlimited: false,
    isActive: true
  },

  actions: {
    createItem() {
      let item = this.store.createRecord('item', {
        name: this.get('heap.name'),
        barcode: this.get('heap.barcode'),
        stock: this.get('heap.stock'),
        // purchasePrice: this.get('heap.purchasePrice'),
        // sellingPrice: this.get('heap.sellingPrice'),
        unlimited: this.get('heap.unlimited'),
        isActive: this.get('heap.isActive'),
        warningThreshold: this.get('heap.warningThreshold'),
        entity: this.get('heap.entity')
      });

      let that = this;
      let flash = Ember.get(this, 'flashMessages');

      item.save().then(function() {
        that.set('heap', {
          unlimited: false,
          isActive: true,
          entity: that.get('attrs.entities.firstObject')
        });
        flash.success(`${item.name} ✓`);
      }, function(response) {
        flash.danger(`${item.name} ✓ ${response}`);
      });
    }
  }
});
