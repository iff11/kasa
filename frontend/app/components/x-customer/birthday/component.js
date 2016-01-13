import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['label'],
  classNameBindings: ['class'],
  attributeBindings: ['title'],
  tagName: 'span',

  toFutureHuman: function() {
    var now = moment(),
        nextBirthday = this.get('customer.nextBirthday');

    if(!Ember.isEmpty(nextBirthday)) {
      return nextBirthday.from(now);
    } else {
      return '?';
    }
  }.property('customer.birth'),

  toFutureDays: function() {
    var now = moment(),
        nextBirthday = this.get('customer.nextBirthday');

    if(nextBirthday) {
      return nextBirthday.diff(now, 'days');
    } else {
      return '?';
    }
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
