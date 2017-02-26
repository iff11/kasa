import Ember from 'ember';

export default Ember.Service.extend({
  store: Ember.inject.service(),

  companies: {},

  init() {
    this._super(...arguments);
    this.refreshCompanies();
    this.set('companies', this.get('store').findAll('company'));
  },

  company: Ember.computed('companies.[]', function () {
    return this.get('companies.firstObject');
  }),

  isInvoicePrintingActive: Ember.computed('company', function () {
    return this.get('company.isInvoicePrintingActive');
  }),

  cashbookBalance: Ember.computed.oneWay('company.cashbookBalance'),

  refreshCompanies() {
    console.log('refreshing');
    this.set('companies', this.get('store').findAll('company'));
  }
});
