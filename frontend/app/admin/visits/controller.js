import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  selected: null,

  currentEvents: Ember.computed('model.[]', function() {
    return this.get('model').map(function(visit) {
      return {
        title: visit.get('customer.fullName'),
        start: visit.get('createdAt'),
        id: visit.get('id')
      };
    });
  }),

  actions: {
    dateSelected(date) {

    }
  }
});
