import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'div',
  classNames: ['panel', 'panel-default'],

  actions: {
    toggleExpand: function () {
      this.toggleProperty('isExpanded');
    }
  }
});
