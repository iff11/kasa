import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  settings: Ember.inject.service(),

  attrs: {
    entry: {}
  },

  queryParams: ['page', 'perPage'],

  page: 1,
  perPage: 25,

  sortBy: ['touchedAt:desc'],
  sortedCashbookEntries: Ember.computed.sort('model', 'sortBy'),
  pagedCashbookEntries: pagedArray('sortedCashbookEntries', { pageBinding: 'page', perPageBinding: 'perPage' }),

  cashbookBalance: Ember.computed.oneWay('settings.cashbookBalance'),

  actions: {
    createNewEntry() {
      let flash = Ember.get(this, 'flashMessages');

      let entry = this.store.createRecord('cashbook_entry', {
        amount: this.get('attrs.entry.amount'),
        note: this.get('attrs.entry.note'),
        touchedAt: new Date(),
        kind: 'manual'
      });

      entry.save().then(() => {
        flash.success('✓');
        this.set('attrs.entry', {});
        this.get('settings').refreshCompanies();
      }, (response) => {
        flash.danger(`✗ ${response.message}`);
      });
    },
    deleteCashbookEntry(entry) {
      let flash = Ember.get(this, 'flashMessages');

      entry.deleteRecord();
      entry.save().then(() => {
        flash.success('Entry deleted');
        this.get('settings').refreshCompanies();
      }, function(response) {
        flash.danger(`Entry cannot be deleted! ${response.responseText}`);
      });
    }
  }
});
