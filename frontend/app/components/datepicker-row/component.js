import Ember from 'ember';
import _ from 'lodash/lodash';

export default Ember.Component.extend({
  classNames: ['datepicker-row'],
  selected: {},
  startingYear: 2015,

  years: Ember.computed('startingYear', function() {
    let startingYear = this.get('startingYear');
    let currentYear = new Date().getFullYear();

    return _.range(startingYear, currentYear + 1);
  }),

  months: Ember.computed(function() {
    return _.range(1, 12 + 1);
  }),

  days: Ember.computed('selected.month', function() {
    // let month = this.get('selected.month');
    // TODO: Calculate maxDay
    let maxDay = 30;
    return _.range(1, maxDay + 1);
  }),

  didInsertElement() {
    let now = new Date();

    this.set('selected', {
      year: now.getFullYear(),
      month: now.getMonth() + 1,
      day: now.getDate()
    });
  },

  actions: {
    makeSelection(year, month, day) {
      this.set('selected', {
        year,
        month,
        day
      });
      console.log(year, month, day);
    }
  }
});
