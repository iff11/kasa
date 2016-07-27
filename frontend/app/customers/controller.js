import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: { customers: [] },

  queryParams: ['page', 'perPage'],

  filterBy: ['firstName', 'lastName', 'note', 'phone'],

  sortBy: ['lastName'],
  sortedCustomers: Ember.computed.sort('filteredCustomers', 'sortBy'),

  page: 1,
  perPage: 25,
  pagedCustomers: pagedArray('sortedCustomers', { pageBinding: 'page', perPageBinding: 'perPage' }),
  totalPagesBinding: 'pagedCustomers.totalPages',

  actions: {
    sortBy(value) {
      this.set('sortBy', [value]);
    },
    customersFiltered(value) {
      this.set('page', 1);
      this.set('filteredCustomers', value);
    }
  }
});
