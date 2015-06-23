import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {items: []},

  queryParams: ["page", "perPage"],
  page: 1,
  perPage: 20,
  pagedContent: pagedArray("attrs.items", {pageBinding: "page", perPageBinding: "perPage"}),
  totalPagesBinding: "pagedContent.totalPages",

  activeItems: function() {
    // var items = Ember.ArrayProxy.extend(Ember.SortableMixin).create(this.get("attrs.items"));
    // return items.set("sortProperties", ["name"]);
    return this.get('attrs.items').sortBy('name').filterBy('is_active', true);
  }.property("attrs.items.@each"),

  inactiveItems: function() {
    // var items = Ember.ArrayProxy.extend(Ember.SortableMixin).create(this.get("attrs.items"));
    // return items.set("sortProperties", ["name"]);
    return this.get('attrs.items').sortBy('name').filterBy('is_active', false);
  }.property("attrs.items.@each"),
});
