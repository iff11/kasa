import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',
  classNames: ['th-sort'],

  click() {
    let val = this.get('value');

    if (this.get('isCurrent')) {
      val += ':desc';
    }

    this.sendAction('action', val);
  },

  isCurrent: Ember.computed('topSort', 'value', function() {
    let topSort = this.get('topSort');
    let value = this.get('value');

    return topSort === value;
  }),

  isAsc: Ember.computed('isCurrent', 'topSortDirection', function() {
    return this.get('isCurrent') && (this.get('topSortDirection') === 'asc' || this.get('topSortDirection') === undefined);
  }),

  isDesc: Ember.computed('isCurrent', 'topSortDirection', function() {
    return this.get('isCurrent') && this.get('topSortDirection') === 'desc';
  }),

  topSort: Ember.computed('current', function() {
    return this.get('current.firstObject').split(':')[0];
  }),

  topSortDirection: Ember.computed('current', function() {
    return this.get('current.firstObject').split(':')[1];
  })
});
