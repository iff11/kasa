import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  date: null,

  currentEvents: Ember.computed('model.[]', function() {
    return this.get('model').map(function(visit) {
      return {
        title: visit.get('customer.fullName'),
        start: visit.get('createdAt'),
        id: visit.get('id')
      };
    });
  }),

  pikadayDate: Ember.computed('date.[]', function () {
    let date = this.get('date');
    return {
      year: date.year,
      month: date.month - 1,
      day: date.day
    };
  }),

  actions: {
    dateSelected(date) {
      this.transitionToRoute('admin.visits.day', date.getUTCFullYear(), date.getUTCMonth() + 1, date.getUTCDate());
    }
  }
});
