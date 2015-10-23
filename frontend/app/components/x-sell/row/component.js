import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',
  classNames: ['visit-sell'],
  firstChange: true,
  isPersisted: Ember.computed.alias('sell.id'),

  actions: {
    create: function () {
      this.sendAction('create', this.get('sell'));
      this.set('isEditting', false);
    },
    edit: function () {
      this.set('isEditting', true);
    },
    update: function() {
      this.sendAction('update', this.get('sell'));
      this.set('isEditting', false);
    },
    delete: function() {
      this.sendAction('delete', this.get('sell'));
      this.set('isEditting', false);
    },
    selectItem: function (item) {
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
