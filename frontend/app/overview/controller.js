import Ember from 'ember';
import ENV from 'frontend/config/environment';

export default Ember.Controller.extend({
  queryParams: ['from', 'to'],
  maxPerPage: 1000,
  from: null,
  to: null,

  attrs: {},
  date: null,

  setDate(type, date) {
    let dateFormat = ENV.app.dateFormat;
    this.set(type, moment(date).format(dateFormat));
  },

  isPagingExceeded: Ember.computed('attrs.visits.[]', function () {
    return this.get('attrs.visits.length') >= this.get('maxPerPage');
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
