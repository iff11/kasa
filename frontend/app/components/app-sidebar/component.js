import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['sidebar'],

  actions: {
    logout: function() {
      this.sendAction('logout');
    }
  }
});
