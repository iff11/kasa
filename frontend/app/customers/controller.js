import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {customers: []},

  queryParams: ['page', 'perPage'],

  filterBy: ['first_name', 'last_name', 'note'],
  filterString: '',
  filteredCustomers: function () {
    var filterString = this.get('filterString');
    if (Ember.isEmpty(filterString)) {
      return this.get('attrs.customers');
    } else {
      var regExPattern = this.get('filterString');
      var regexp = new RegExp(regExPattern, 'i');
      var filterBy = this.get('filterBy');
      return this.get('attrs.customers').filter( function(item){
        var properties = _.values(item.getProperties(filterBy)).join();
        return properties.match(regexp);
      });
    }
  }.property('filterString', 'attrs.customers.[]'),

  sortBy: ['name'],
  sortedCustomers: Ember.computed.sort('filteredCustomers', 'sortBy'),

  page: 1,
  perPage: 30,
  pagedCustomers: pagedArray('sortedCustomers', {pageBinding: 'page', perPageBinding: 'perPage'}),
  totalPagesBinding: 'pagedCustomers.totalPages',

  actions: {
    sortBy: function (value) {
      this.set('sortBy', [value]);
    }
  }
});
