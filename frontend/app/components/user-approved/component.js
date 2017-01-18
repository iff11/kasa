import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'i',
  classNames: ['fa'],
  classNameBindings: 'class',

  class: Ember.computed('isApproved', function () {
    let isApproved = this.get('isApproved');

    if(isApproved) {
      return 'fa-user';
    } else {
      return 'fa-user-times';
    }
  })
});
