import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  sortBy: 'visitsCount',

  customersSorted: function() {
    return Ember.ArrayProxy.createWithMixins(Ember.SortableMixin, {
      sortProperties: [this.get('sortBy')],
      sortAscending: true,
      content: this.get('attrs.customers')
    });
  }.property('attrs.customers', 'sortBy'),

  mailto: function () {
    var mails = this.get('attrs.customers').mapBy('mail').join(',');
    return 'mailto:salon@topstylesalon.cz?subject=TopStyleSalon&bcc=' + mails;
  }.property('attrs.customers'),

  actions: {
    sortBy: function (column) {
      this.set('sortBy', column);
    }
  }
});
