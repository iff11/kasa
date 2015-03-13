import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['sidebar'],

  open_visits: function() {
    return this.get('visits.length');
  }.property('visits.@each')
});
