import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['label'],
  classNameBindings: ['class'],
  attributeBindings: ['title'],
  tagName: 'span',

  nextBirthDay: function() {
    var birth = moment(this.get('customer.birth'), 'YYYY-MM-DD'),
        now = moment(),
        currYear = now.year(),
        thisYearBirthDay = birth.clone().year(currYear),
        nextYearBirthDay = birth.clone().year(currYear + 1);

    if(now.diff(thisYearBirthDay, 'days') > 0) {
      return nextYearBirthDay
    } else {
      return thisYearBirthDay
    }
  }.property('customer.birth'),

  toFutureHuman: function() {
    var now = moment();

    return this.get('nextBirthDay').from(now);
  }.property('customer.birth'),

  toFutureDays: function() {
    var now = moment();

    return this.get('nextBirthDay').diff(now, 'days');
  }.property('customer.birth'),

  title: function() {
    return this.get('customer.birth');
  }.property('customer.birth'),

  class: function() {
    if(this.get('toFutureDays') < 90) {
      if(this.get('toFutureDays') < 30) {
        return 'label-danger';
      } else {
        return 'label-warning';
      }
    } else {
      return 'label-default';
    }
  }.property('customer.birth')
});
