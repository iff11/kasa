import Ember from 'ember';

export default Ember.Controller.extend({
  settings: Ember.inject.service(),

  isInvoicePrintingActive: Ember.computed.oneWay('settings.isInvoicePrintingActive'),
  attrs: {},

  returnCash: Ember.computed('attrs.visit.paidByCard', 'attrs.visit.priceWithTip', 'attrs.visit.receivedCash', function() {
    let receivedCash = parseInt(this.get('attrs.visit.receivedCash')) || 0;
    let paidByCard = parseInt(this.get('attrs.visit.paidByCard')) || 0;
    let priceWithTip = parseInt(this.get('attrs.visit.priceWithTip')) || 0;

    return ((receivedCash + paidByCard) - priceWithTip);
  }),

  isReturnCashInvalid: Ember.computed('returnCash', function () {
    let isAnyEmpty = ['receivedCash', 'paidByCard', 'priceWithTip'].any((item) => {
      return Ember.isEmpty(this.get(`attrs.visit.${item}`));
    });
    let returnCash = this.get('returnCash');

    return (returnCash < 0) || isAnyEmpty;
  }),

  priceWithTipClass: Ember.computed('attrs.visit.priceWithTip', 'attrs.visit.price', function () {
    let priceWithTip = this.get('attrs.visit.priceWithTip');
    let price = this.get('attrs.visit.price');

    if(priceWithTip < price) {
      return 'has-error';
    }
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

        visit.get('cashbookEntry').then((cashbookEntry) => {
          console.log(cashbookEntry.get('amount'));
          cashbookEntry.set('amount', visit.get('paidInCash'));
          cashbookEntry.set('when', new Date());
          cashbookEntry.save().then(() => {
            if(this.get('isInvoicePrintingActive')) {
              this.transitionToRoute('visit.print', visit.get('id'));
            } else {
              this.transitionToRoute('visits');
            }
          });
        });
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
