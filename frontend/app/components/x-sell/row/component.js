import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',

  sellName: function() {
    console.log('foosdfsd');
    return this.get('sell.item.name');
  }.property('sell', 'sell.item', 'sell.item.name'),

  actions: {
    edit: function() {
      this.toggleProperty('isEditting');
    },
    delete: function() {
      this.sendAction('delete', this.get('sell'));
      this.toggleProperty('isEditting');
    },
    update: function() {
      this.sendAction('update', this.get('sell'));
      this.toggleProperty('isEditting');
    }
  }
});
