import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',

  click: function () {
    this.sendAction('action', this.get('value'));
  },

  isCurrent: function () {
    return this.get('current') === this.get('value');
  }.property('current', 'value')
});
