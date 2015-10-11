import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {customers: []},

  queryParams: ['page', 'perPage'],

  filterBy: ['firstName', 'lastName', 'note'],

  sortBy: ['name'],
  sortedCustomers: Ember.computed.sort('filteredCustomers', 'sortBy'),

  page: 1,
  perPage: 25,
  pagedCustomers: pagedArray('sortedCustomers', {pageBinding: 'page', perPageBinding: 'perPage'}),
  totalPagesBinding: 'pagedCustomers.totalPages',

  actions: {
    sortBy: function (value) {
      this.set('sortBy', [value]);
    },
    customersFiltered: function (value) {
      this.set('page', 1);
      this.set('filteredCustomers', value);
    }
  }
});
