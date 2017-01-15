import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  returnCash: Ember.computed('attrs.visit.paidByCard', 'attrs.visit.priceWithTip', 'attrs.visit.receivedCash', function() {
    let receivedCash = parseInt(this.get('attrs.visit.receivedCash'));
    let paidByCard = parseInt(this.get('attrs.visit.paidByCard'));
    let priceWithTip = parseInt(this.get('attrs.visit.priceWithTip'));

    return ((receivedCash + paidByCard) - priceWithTip);
  }),

  isReturnCashInvalid: Ember.computed('returnCash', function () {
    let returnCash = this.get('returnCash');
    return (returnCash < 0);
  }),

  returnCashClass: Ember.computed('isReturnCashInvalid', function () {
    let isReturnCashInvalid = this.get('isReturnCashInvalid');
    if(isReturnCashInvalid) {
      return 'has-error';
    } else {
      return 'has-success';
    }
  }),

  actions: {
    confirmCheckout() {
      let priceWithTip = parseInt(this.get('attrs.visit.priceWithTip'));
      let paidByCard = parseInt(this.get('attrs.visit.paidByCard'));
      let paidInCash = priceWithTip - paidByCard;

      let visit = this.get('attrs.visit');
      visit.set('paidInCash', paidInCash)
      visit.set('completed', true);

      let flash = Ember.get(this, 'flashMessages');
      visit.save().then(() => {
        flash.success('Successfully saved!');
        this.transitionToRoute('visits');
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
