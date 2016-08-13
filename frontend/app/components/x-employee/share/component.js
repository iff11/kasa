import Ember from 'ember';

export default Ember.Component.extend({
  sum: Ember.computed('shareSale', 'shareService', function() {
    return this.get('shareSale') + this.get('shareService');
  })
});
