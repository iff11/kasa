import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  human: Ember.computed('customer.lastVisitDate', function() {
    let now = moment();
    let created = moment(this.get('customer.lastVisitDate'));

    return created.from(now);
  }),

  days: Ember.computed('customer.lastVisitDate', function() {
    let now = moment();
    let created = moment(this.get('customer.lastVisitDate'));

    return now.diff(created, 'days');
  }),

  class: Ember.computed('days', function() {
    if (this.get('days') < 30) {
      return 'label-success';
    } else if (this.get('days') < 60) {
      return 'label-warning';
    } else {
      return 'label-danger';
    }
  })
});
