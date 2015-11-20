import Ember from 'ember';

export default Ember.Component.extend({
  classNameBindings: ['item.lowStock:label-danger:label-success', ':label'],
  attributeBindings: ['title'],

  title: function() {
    return "min: " + this.get('item.warningThreshold');
  }.property('item.warningThreshold')
});
