import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {
    supply: {}
  },

  lastSupplyPrice: function() {
    this.set('attrs.supply.purchase_price', this.get('lastSupply.purchase_price'));
  }.observes('attrs.supply.item'),

  lastSupply: function () {
    console.log('lastSupply: ', this.get('attrs.supply.item.lastSupply'));
    return this.get('attrs.supply.item.lastSupply');
  }.property('attrs.supply.item'),

  items: function () {
    return this.store.findAll('item');
  }.property(),

  actions: {
    createSupply: function() {
      var that = this,
          flash = Ember.get(this, 'flashMessages'),
          supply = this.store.createRecord('supply', this.get('attrs.supply'));

      supply.save().then(function() {
        flash.success('Supply successfully saved!');
        if(that.get('attrs.supply.item.isDirty')) {
          that.get('attrs.supply.item').save().then(function () {
            flash.success('Item successfully updated!');
          }, function (response) {
            flash.danger('Updating item failed', response);
          });
        }

        that.set('attrs.supply.item', null);
        that.set('attrs.supply.quantity', null);
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
