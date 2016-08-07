import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',

  sumsOfSells: Ember.computed.mapBy('visit.sells', 'sum'),
  sum: Ember.computed.sum('sumsOfSells')
});
