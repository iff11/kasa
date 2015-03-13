import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  actions: {
    edit: function() {
      this.toggleProperty('isEditting');
    },
    delete: function() {
      this.sendAction('delete', this.get('item'));
    },
    update: function() {
      this.sendAction('update', this.get('item'));
    }
  }
});
