import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {customers: []},

  queryParams: ["page", "perPage"],

  page: 1,
  perPage: 20,

  pagedContent: pagedArray("sortedCustomers", {pageBinding: "page", perPageBinding: "perPage"}),
  totalPagesBinding: "pagedContent.totalPages",

  sortedCustomers: function() {
    var items = Ember.ArrayProxy.extend(Ember.SortableMixin).create(this.get("attrs.customers"));
    return items.set("sortProperties", ["nextBirthdayInDays"]);
  }.property("attrs.customers.@each"),

});
