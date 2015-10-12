import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',
  firstChange: true,

  actions: {
    'selectItem': function (item) {
      // TODO: horrible hack. We want to change the price to default seeling price if and only if NEW item is selected,
      // Butt currently ember-cli-selectize fires the action even on initial component render
      if (this.get('firstChange')) {
        this.set('firstChange', false);
      } else {
        this.set('sell.price', this.get('sell.item.sellingPrice'));
      }
    }
  }
});
