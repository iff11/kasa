import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {},

  queryParams: ['page', 'perPage', 'filter'],
  filterBy: ['name'],

  itemCount: Ember.computed.oneWay('filteredItems.length'),

  sortBy: ['name'],
  sortedItems: Ember.computed.sort('filteredItems', 'sortBy'),

  page: 1,
  perPage: 25,
  pagedItems: pagedArray('sortedItems', { pageBinding: 'page', perPageBinding: 'perPage' }),

  actions: {
    sortBy(value) {
      this.set('sortBy', [value]);
    },
    itemsFiltered(value) {
      this.set('page', 1);
      this.set('filteredItems', value);
    }
  }
});
