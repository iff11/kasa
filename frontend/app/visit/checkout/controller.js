import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  returnAmount: Ember.computed('attrs.visit.priceWithTip', 'attrs.visit.paidInCash', function() {
    return this.get('attrs.visit.paidInCash') - this.get('attrs.visit.priceWithTip');
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
