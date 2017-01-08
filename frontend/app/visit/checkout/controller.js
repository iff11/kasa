import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  returnAmount: Ember.computed('attrs.visit.price_with_tip', 'attrs.visit.receivedAmount', function() {
    return this.get('attrs.visit.receivedAmount') - this.get('attrs.visit.price_with_tip');
  }),

  actions: {
    confirmCheckout() {
      let visit = this.get('attrs.visit');
      let that = this;
      visit.set('completed', true);

      let flash = Ember.get(this, 'flashMessages');
      visit.save().then(function() {
        flash.success('Successfully saved!');
        that.transitionToRoute('visits');
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
