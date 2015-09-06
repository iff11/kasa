import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {},

  queryParams: ['page', 'perPage', 'filter'],

  filterBy: '',
  filteredItems: function () {
    var filterBy = this.get('filterBy');
    if (Ember.isEmpty(filterBy)) {
      return this.get('attrs.items');
    } else {
      var regExPattern = this.get('filterBy');
      var regexp = new RegExp(regExPattern, 'i');
      return this.get('attrs.items').filter( function(item){
        return item.get('name').match(regexp);
      });
    }
  }.property('filterBy', 'attrs.items.[]'),

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
