import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  human: function () {
    var now = moment(),
        created = moment(this.get('customer.lastVisitDate'));

    return created.from(now);
  }.property('customer.lastVisitDate'),

  days: function () {
    var now = moment(),
        created = moment(this.get('customer.lastVisitDate'));

    return now.diff(created, 'days');
  }.property('customer.lastVisitDate'),

  class: function () {
    if (this.get('days') < 30) {
      return 'label-success';
    } else if (this.get('days') < 60) {
      return 'label-warning';
    } else {
      return 'label-danger';
    }
  }.property('days')
});
