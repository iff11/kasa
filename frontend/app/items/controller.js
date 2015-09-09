import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {},

  queryParams: ['page', 'perPage', 'filter'],

  filterString: '',
  filteredItems: function () {
    var filterString = this.get('filterString');
    if (Ember.isEmpty(filterString)) {
      return this.get('attrs.items');
    } else {
      var regExPattern = this.get('filterString');
      var regexp = new RegExp(regExPattern, 'i');
      return this.get('attrs.items').filter( function(item){
        return item.get('name').match(regexp);
      });
    }
  }.property('filterString', 'attrs.items.[]'),

  itemCount: Ember.computed.oneWay('filteredItems.length'),

  sortBy: ['name'],
  sortedItems: Ember.computed.sort('filteredItems', 'sortBy'),

  page: 1,
  perPage: 30,
  pagedItems: pagedArray('sortedItems', {pageBinding: 'page', perPageBinding: 'perPage'}),
  totalPagesBinding: 'pagedItems.totalPages',

  actions: {
    sortBy: function (value) {
      this.set('sortBy', [value]);
    }
  }
});
