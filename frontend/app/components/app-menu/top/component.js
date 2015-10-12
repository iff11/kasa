import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  lastError: function () {
    // return this.get('flashMessages.queue').filterBy('type', 'danger').get('lastObject');
    return this.get('flashMessages.queue').get('lastObject');
  }.property('flashMessages.queue.[]'),

  actions: {
    logout: function() {
      this.sendAction('logout');
    }
  }
});
