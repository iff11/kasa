import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  openVisits: function() {
    return this.get('attrs.visits').filterBy('completed', false);
  }.property('attrs.visits.@each')
});
