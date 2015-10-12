import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {items: []},

  queryParams: ['page', 'perPage', 'filterBy'],

  filterBy: ['name', 'barcode'],

  sortBy: ['name'],
  sortedItems: Ember.computed.sort('filteredItems', 'sortBy'),

  page: 1,
  perPage: 25,
  pagedItems: pagedArray('sortedItems', {pageBinding: 'page', perPageBinding: 'perPage'}),

  actions: {
    sortBy: function (value) {
      this.set('sortBy', [value]);
    },
    itemsFiltered: function (value) {
      this.set('page', 1);
      this.set('filteredItems', value);
    }
  }
});
