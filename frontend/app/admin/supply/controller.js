import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {},

  onItemChosen: function() {
    var item = this.get('heap.item'),
        newSupply = this.get('attrs.newSupply');

    if (!Ember.isEmpty(item)) {
      item.get('lastSupply').then((lastSupply) => {
        newSupply.set('quantity', lastSupply.get('quantity'));
        newSupply.set('purchase_price', lastSupply.get('purchase_price'));
        item.set('lastSupply', newSupply);
      });
      this.set('attrs.newSupply.item', item);
    }

    // item.set('sellingPrice', item.get('sellingPrice'));
  }.observes('heap.item'),

  onInitNewSupply: function () {
    this.send('initSupply');
  }.on('init'),

  actions: {
    initSupply: function () {
      this.set('attrs.newSupply', this.store.createRecord('supply', {
        purchase_price: 0,
        quantity: 0,
        vat: 21
      }));
      this.set('heap.item', undefined);
      // TODO: this does not work
      // this.set('attrs.newSupply.item', {sellingPrice: 0});
    },

    createSupply: function() {
      var flash = Ember.get(this, 'flashMessages'),
          newSupply = this.get('attrs.newSupply'),
          item = this.get('heap.item'),
          itemName = item.get('name'),
          bought = 0;

      item.get('supplies').then((supplies) => {
        bought = supplies.reduce((prev, supply) => { return prev + parseInt(supply.get('quantity')); }, 0);

        item.set('lastSupply', newSupply);
        item.set('bought', bought);

        newSupply.save().then(() => {
          flash.success(itemName + ' ++');
          item.save().then(() => {
            flash.success(itemName + ' ✓');
            this.send('initSupply');
          }, (response) => {
            flash.danger(itemName + ' ✓ ' + response);
            this.send('initSupply');
          });
        }, (response) => {
          flash.danger(itemName + ' ++ ' + response);
          this.send('initSupply');
        });
      });
    }
  }
});
