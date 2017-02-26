import Ember from 'ember';
import ENV from 'frontend/config/environment';

export default Ember.Controller.extend({
  queryParams: ['from', 'to'],
  maxPerPage: 1000,
  from: null,
  to: null,

  attrs: {},
  date: null,

  links: Ember.computed(function () {
    return {
      now: this.formatDate(moment()),
      day: this.formatDate(moment().subtract(1, 'days')),
      week: this.formatDate(moment().startOf('week')),
      month: this.formatDate(moment().startOf('month'))
    };
  }),

  formatDate(date) {
    let dateFormat = ENV.app.dateFormat;
    return moment(date).format(dateFormat);
  },

  setDate(type, date) {
    this.set(type, this.formatDate(date));
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
