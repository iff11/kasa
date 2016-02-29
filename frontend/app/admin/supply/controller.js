import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {},

  onItemChosen: Ember.observer('heap.item', function() {
    let item = this.get('heap.item');
    let newSupply = this.get('attrs.newSupply');

    if (!Ember.isEmpty(item)) {
      item.get('lastSupply').then((lastSupply) => {
        newSupply.set('quantity', lastSupply.get('quantity'));
        newSupply.set('purchasePrice', lastSupply.get('purchasePrice'));
        item.set('lastSupply', newSupply);
      });
      this.set('attrs.newSupply.item', item);
    }

    // item.set('sellingPrice', item.get('sellingPrice'));
  }),

  onInitNewSupply: function() {
    this.send('initSupply');
  }.on('init'),

  actions: {
    initSupply() {
      this.set('attrs.newSupply', this.store.createRecord('supply', {
        'purchasePrice': 0,
        quantity: 0,
        vat: 21
      }));
      this.set('heap.item', undefined);
      // TODO: this does not work
      // this.set('attrs.newSupply.item', { sellingPrice: 0 });
    },

    createSupply() {
      let flash = Ember.get(this, 'flashMessages');
      let newSupply = this.get('attrs.newSupply');
      let item = this.get('heap.item');
      let itemName = item.get('name');
      let bought = 0;

      item.get('supplies').then((supplies) => {
        bought = supplies.reduce((prev, supply) => {
          return prev + parseInt(supply.get('quantity'));
        }, 0);

        item.set('lastSupply', newSupply);
        item.set('bought', bought);

        newSupply.save().then(() => {
          flash.success(`${itemName} ++`);
          item.save().then(() => {
            flash.success(`${itemName} ✓`);
            this.send('initSupply');
          }, (response) => {
            flash.danger(`${itemName} ✓ ${response}`);
            this.send('initSupply');
          });
        }, (response) => {
          flash.danger(`${itemName} ++ ${response}`);
          this.send('initSupply');
        });
      });
    }
  }
});
