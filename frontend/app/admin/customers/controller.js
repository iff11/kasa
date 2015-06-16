import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  sortBy: 'visits_count',

  customersSorted: function() {
    return Ember.ArrayProxy.createWithMixins(Ember.SortableMixin, {
      sortProperties: [this.get('sortBy')],
      sortAscending: true,
      content: this.get('attrs.customers')
    });
  }.property('attrs.customers', 'sortBy'),

  actions: {
    sortBy: function (column) {
      this.set('sortBy', column);
    }
  }
});
