import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',

  sellName: function() {
    console.log(this.get('sell'));
    console.log(this.get('sell.item'));
    console.log(this.get('sell.item.name'));
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
