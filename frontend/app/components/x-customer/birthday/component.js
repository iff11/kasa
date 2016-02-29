import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['label'],
  classNameBindings: ['class'],
  attributeBindings: ['title'],
  tagName: 'span',

  toFutureHuman: Ember.computed('customer.nextBirthday', function() {
    return this.get('customer.nextBirthday').fromNow().toString();
  }),

  class: Ember.computed('customer.daysTillNextBirthday', function() {
    let days = this.get('customer.daysTillNextBirthday');

    if (days < 90) {
      if (days < 30) {
        return 'label-danger';
      } else {
        return 'label-warning';
      }
    } else {
      return 'label-default';
    }
  }),

  title: Ember.computed('customer.birth', function() {
    return this.get('customer.birth');
  })
});
