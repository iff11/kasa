import Ember from 'ember';

export default Ember.Controller.extend({
  queryParams: ['from', 'to'],
  from: null,
  to: null,
  dateFormat: 'YYYY-MM-DD',

  attrs: {},
  date: null,

  setDate(type, date) {
    let dateFormat = this.get('dateFormat');
    this.set(type, moment(date).format(dateFormat));
  },

  currentEvents: Ember.computed('model.[]', function() {
    return this.get('model').map(function(visit) {
      return {
        title: visit.get('customer.fullName'),
        start: visit.get('createdAt'),
        id: visit.get('id')
      };
    });
  }),

  sumCash: Ember.computed('attrs.visits.[]', function () {
    let visits = this.get('attrs.visits');

    return visits.reduce((prev, curr) => {
      return prev + curr.get('paidInCash');
    }, 0);
  }),

  sumCard: Ember.computed('attrs.visits.[]', function () {
    let visits = this.get('attrs.visits');

    return visits.reduce((prev, curr) => {
      return prev + curr.get('paidByCard');
    }, 0);
  }),
  sum: Ember.computed('attrs.visits.[]', function () {
    let visits = this.get('attrs.visits');

    return visits.reduce((prev, curr) => {
      return prev + curr.get('priceWithTip');
    }, 0);
  }),

  actions: {
    dateSelected(type, date) {
      this.setDate(type, date);
    }
  }
});
