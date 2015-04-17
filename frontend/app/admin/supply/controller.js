import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {
    supply: {}
  },

  items: function () {
    return this.store.find('item');
  }.property(),

  actions: {
    createSupply: function() {
      var that = this,
          flash = Ember.get(this, 'flashMessages'),
          supply = this.store.createRecord('supply', this.get('attrs.supply'));

      supply.save().then(function() {
        that.set('attrs.supply', {});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    }
  }
});
