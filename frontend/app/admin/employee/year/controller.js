import Ember from 'ember';

export default Ember.Controller.extend({
  months: Ember.computed(function() {
    return Array.from(Array(12), (v, k) => k + 1);
  })

  // monthNames: function() {
  //   return this.get('months').map(function(month) {
  //     return `month.${month }`;
  //   });
  // }.property('months.[]')
});
