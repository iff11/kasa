import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {},

  queryParams: ['page', 'perPage', 'filterBy'],

  filterBy: ['firstName', 'lastName', 'note', 'phone', 'mail'],
  filteredCustomers: [],

  sortBy: ['visitsCount:desc'],
  sortedCustomers: Ember.computed.sort('filteredCustomers', 'sortBy'),

  page: 1,
  perPage: 25,
  pagedCustomers: pagedArray('sortedCustomers', {pageBinding: 'page', perPageBinding: 'perPage'}),

  mailto: function () {
    var mails = this.get('filteredCustomers').mapBy('mail').join(',');
    return 'mailto:salon@topstylesalon.cz?subject=TopStyleSalon&bcc=' + mails;
  }.property('filteredCustomers.[]'),

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
