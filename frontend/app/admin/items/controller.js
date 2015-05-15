import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {items: []},

  queryParams: ["page", "perPage"],
  page: 1,
  perPage: 20,
  pagedContent: pagedArray("attrs.items", {pageBinding: "page", perPageBinding: "perPage"}),
  totalPagesBinding: "pagedContent.totalPages",

  sortedItems: function() {
    var items = Ember.ArrayProxy.extend(Ember.SortableMixin).create(this.get("attrs.items"));
    return items.set("sortProperties", ["name"]);
  }.property("attrs.items.@each"),
});
