import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {
    supply: {
      purchase_price: 0,
      quantity: 0
    }
  },

  // TODO: This does not work :(
  // onItemChosen: function() {
  //   var lastSupply = this.get('attrs.supply.item.lastSupply');
  //
  //   this.set('attrs.supply.purchase_price', lastSupply.get('purchase_price'));
  //   this.set('attrs.supply.quantity', lastSupply.get('quantity'));
  // }.observes('attrs.supply.item'),

  actions: {
    createSupply: function() {
      var flash = Ember.get(this, 'flashMessages'),
          itemName = this.get('attrs.supply.item.name'),
          supply = this.store.createRecord('supply', this.get('attrs.supply'));

      supply.set('lastSupplyFor', [this.get('attrs.supply.item')]);

      supply.save().then(() => {
        flash.success(this.get('attrs.supply.item.name') + ' ++');
        if(this.get('attrs.supply.item.isDirty')) {
          this.get('attrs.supply.item').save().then(() => {
            flash.success(itemName + ' ✓');
          }, (response) => {
            flash.danger(itemName + ' ✓ ' + response);
          });
        }

        this.set('attrs.supply', {
          item: null,
          quantity: 0,
          purchase_price: 0
        });
      }, (response) => {
        flash.danger(itemName + ' ++ ' + response);
      });
    }
  }
});
