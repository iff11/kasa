import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'div',
  classNames: ['customer-visit'],

  actions: {
    toggleExpand() {
      this.toggleProperty('isExpanded');
    }
  }
});
