import Ember from 'ember';

export default Ember.Component.extend({
  currency: function() {
    return Math.round(this.get('value')) + ' Kč';
  }.property('number')
});
