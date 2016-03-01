import Ember from 'ember';

export default Ember.Controller.extend({
  months: Ember.computed(function() {
    return _.range(1, 12 + 1);
  })

  // monthNames: function() {
  //   return this.get('months').map(function(month) {
  //     return `month.${month }`;
  //   });
  // }.property('months.[]')
});
