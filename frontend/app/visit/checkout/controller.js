import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  returnAmount: Ember.computed('attrs.visit.paidByCard', 'attrs.visit.priceWithTip', 'attrs.visit.paidInCash', function() {
    let paidInCash = parseInt(this.get('attrs.visit.paidInCash'));
    let paidByCard = parseInt(this.get('attrs.visit.paidByCard'));
    let priceWithTip = parseInt(this.get('attrs.visit.priceWithTip'));

    return ((paidInCash + paidByCard) - priceWithTip);
  }),

  isReturnAmountInvalid: Ember.computed('returnAmount', function () {
    let returnAmount = this.get('returnAmount');
    return (returnAmount < 0);
  }),

  returnAmountClass: Ember.computed('isReturnAmountInvalid', function () {
    let isReturnAmountInvalid = this.get('isReturnAmountInvalid');
    if(isReturnAmountInvalid) {
      return 'has-error';
    } else {
      return 'has-success';
    }
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
