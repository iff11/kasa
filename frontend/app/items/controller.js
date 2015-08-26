import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  sortBy: ['name'],

  sortedItems: Ember.computed.sort('attrs.items', 'sortBy'),
  
  actions: {
    sortBy: function (value) {
      this.set('sortBy', [value]);
    }
  }
});
