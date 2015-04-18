import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {
    supply: {}
  },

  lastSupplyPrice: function() {
    this.set('attrs.supply.purchase_price', this.get('lastSupply.purchase_price'));
  }.observes('attrs.supply.item'),

  lastSupply: function () {
    return this.get('attrs.supply.item.lastSupply');
  }.property('attrs.supply.item'),

  items: function () {
    return this.store.find('item');
  }.property(),

  actions: {
    createSupply: function() {
      var that = this,
          flash = Ember.get(this, 'flashMessages'),
          supply = this.store.createRecord('supply', this.get('attrs.supply'));

      supply.save().then(function() {
        that.set('attrs.supply.item', null);
        // that.set('attrs.supply.purchase_price', null);
        that.set('attrs.supply.quantity', null);
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    }
  }
});
