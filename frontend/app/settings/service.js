import Ember from 'ember';

export default Ember.Service.extend({
  store: Ember.inject.service(),

  companies: Ember.computed(function () {
    return this.get('store').findAll('company');
  }),

  company: Ember.computed('companies.[]', function () {
    return this.get('companies.firstObject');
  }),

  isInvoicePrintingActive: Ember.computed('company', function () {
    return this.get('company.isInvoicePrintingActive');
  }),

  cashbookBalance: Ember.computed('company', function () {
    return this.get('company.cashbookBalance');
  })
});
