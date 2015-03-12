import Ember from 'ember';

export default Ember.Component.extend({
  open_visits: function() {
    return this.get('visits.length');
  }.property('visits.@each')
});
