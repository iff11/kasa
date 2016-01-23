import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  actions: {
    logout: function() {
      this.sendAction('logout');
    }
  }
});
