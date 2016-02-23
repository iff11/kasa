import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['label'],
  classNameBindings: ['class'],
  attributeBindings: ['title'],
  tagName: 'span',

  toFutureHuman: function() {
    return this.get('customer.nextBirthday').fromNow().toString();
  }.property('customer.nextBirthday'),

  class: function() {
    var days = this.get('customer.daysTillNextBirthday');

    if(days < 90) {
      if(days < 30) {
        return 'label-danger';
      } else {
        return 'label-warning';
      }
    } else {
      return 'label-default';
    }
  }.property('customer.daysTillNextBirthday'),

  title: function() {
    return this.get('customer.birth');
  }.property('customer.birth')
});
