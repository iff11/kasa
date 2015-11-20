import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['panel-group'],
  tagName: 'div',
  sort: ['updatedAt:desc'],
  visitsSorted: Ember.computed.sort('customer.visits', 'sort')
});
