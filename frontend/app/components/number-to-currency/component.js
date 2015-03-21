import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  currency: function() {
    return Math.round(this.get('value')) + ' Kč';
  }.property('number')
});
