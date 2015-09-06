import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {},

  queryParams: ['page', 'perPage'],

  sortBy: ['name'],
  sortedItems: Ember.computed.sort('attrs.items', 'sortBy'),

  page: 1,
  perPage: 20,
  pagedItems: pagedArray('sortedItems', {pageBinding: 'page', perPageBinding: 'perPage'}),
  totalPagesBinding: 'pagedItems.totalPages',

  actions: {
    sortBy: function (value) {
      this.set('sortBy', [value]);
    }
  }
});
