import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',
  classNames: ['visit-sell'],
  isPersisted: Ember.computed.alias('sell.id'),
  isDirty: Ember.computed.alias('sell.isDirty'),
  isEdittingOrDirty: Ember.computed.or('isEditting', 'isDirty'),

  actions: {
    create: function () {
      this.sendAction('create', this.get('sell'));
      this.set('isEditting', false);
    },
    edit: function () {
      this.set('firstChangeHack', true);
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
    selectItem: function () {
      this.set('sell.price', this.get('sell.item.sellingPrice'));
    }
  }
});
