import Ember from 'ember';

export default Ember.Component.extend({
  classNameBindings: ['item.lowStock:label-danger:label-success', ':label'],
  attributeBindings: ['title'],

  title: Ember.computed('item.warningThreshold', function() {
    let warningThreshold = this.get('item.warningThreshold');
    return `min: ${warningThreshold}`;
  })
});
