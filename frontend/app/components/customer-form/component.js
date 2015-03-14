import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  actions: {
    toggleNote: function() {
      this.toggleProperty('isEditingNote');
    }
  }
});
