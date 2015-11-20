import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    sortBy: function (value) {
      this.sendAction('action', value);
    }
  }
});
