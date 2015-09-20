import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {},

  onItemChosen: function() {
    var lastSupply = this.get('heap.item.lastSupply');

    if (!Ember.isEmpty(lastSupply)) {
      this.get('heap.item.lastSupply').then((lastSupply) => {
        this.set('heap.quantity', lastSupply.get('quantity'));
        this.set('heap.purchase_price', lastSupply.get('purchase_price'));
      });
    }

    this.set('heap.sellingPrice', this.get('heap.item.sellingPrice'));
  }.observes('heap.item'),

  onInitNewSupply: function () {
    this.send('initSupply');
  }.on('init'),

  actions: {
    initSupply: function () {
      this.set('heap', {
        purchase_price: 0,
        quantity: 0,
        vat: 21
      });
    },

    createSupply: function() {
      var flash = Ember.get(this, 'flashMessages'),
          newSupply = this.store.createRecord('supply', this.get('heap')),
          item = this.get('heap.item'),
          itemName = item.get('name'),
          lastSupply = item.get('lastSupply'),
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
