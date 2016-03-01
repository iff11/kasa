import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  lastError: Ember.computed('flashMessages.queue.[]', function() {
    // return this.get('flashMessages.queue').filterBy('type', 'danger').get('lastObject');
    return this.get('flashMessages.queue').get('lastObject');
  }),

  actions: {
    logout() {
      this.sendAction('logout');
    }
  }
});
