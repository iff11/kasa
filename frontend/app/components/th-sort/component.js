import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',
  classNames: ['th-sort'],

  click: function () {
    var val = this.get('value');

    if (this.get('isCurrent')) {
      val += ':desc';
    }

    this.sendAction('action', val);
  },

  isCurrent: function () {
    var topSort = this.get('topSort'),
        value = this.get('value');

    return  topSort === value;
  }.property('topSort', 'value'),

  isAsc: function () {
    return this.get('isCurrent') && (this.get('topSortDirection') === 'asc' || this.get('topSortDirection') === undefined);
  }.property('isCurrent', 'topSortDirection'),

  isDesc: function () {
    return this.get('isCurrent') && this.get('topSortDirection') === 'desc';
  }.property('isCurrent', 'topSortDirection'),

  topSort: function () {
    return this.get('current.firstObject').split(':')[0];
  }.property('current'),

  topSortDirection: function () {
    return this.get('current.firstObject').split(':')[1];
  }.property('current')
});
