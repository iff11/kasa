import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',
  classNames: ['row-item'],

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
