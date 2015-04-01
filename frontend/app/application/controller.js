import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {
    visits: [],
    customers: []
  },

  openVisits: function() {
    return this.get('attrs.visits').filterBy('completed', false);
  }.property('attrs.visits.@each.completed')
});
