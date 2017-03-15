import Ember from 'ember';
// import formatMoney from "accounting/format-money";

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),

  attrs: [],

  heap: {},

  resetHeap: function() {
    this.set('heap', {
      visit: this.get('attrs.visit'),
      count: 1,
      price: 0
    });
  }.on('init'),

  activeItems: Ember.computed('attrs.items', function() {
    return this.get('attrs.items').filterBy('isActive', true);
  }),

  isDirty: Ember.computed('heap.item', function() {
    return !Ember.isEmpty(this.get('heap.item'));
  }),

  actions: {
    createSell() {
      let sell = this.store.createRecord('sell', {
        visit: this.get('attrs.visit'),
        item: this.get('heap.item'),
        count: this.get('heap.count'),
        price: this.get('heap.price')
      });
      let name = sell.get('item.name');
      let fullName = sell.get('visit.customer.fullName');
      let flash = Ember.get(this, 'flashMessages');

      sell.save().then(() => {
        let name = sell.get('item.name');
        let fullName = sell.get('visit.customer.fullName');
        flash.success(`${name} ✓ ${fullName}`);
      }, (response) => {
        sell.unloadRecord();
        flash.danger(`${name} ✓ ${fullName} - ${response.message}`);
      });
      this.resetHeap();
    },

    deleteSell(sell) {
      let flash = Ember.get(this, 'flashMessages');
      let name = sell.get('item.name');
      let fullName = sell.get('visit.customer.fullName');

      sell.deleteRecord();
      sell.save().then(() => {
        this.get('attrs.visit').reload();
        flash.success(`${name} ✗ ${fullName}`);
      }, (response) => {
        flash.danger(`${name} ⌫ ${fullName} ${response.message}`);
      });
    },

    updateSell(sell) {
      let flash = Ember.get(this, 'flashMessages');
      let name = sell.get('item.name');
      let fullName = sell.get('visit.customer.fullName');

      sell.save().then(() => {
        this.get('attrs.visit').reload();
        flash.success(`${name} ✎ ${fullName}`);
      }, (response) => {
        flash.danger(`${name} ✎ ${fullName} ${response.message}`);
      });
    },

    saveNote() {
      let flash = Ember.get(this, 'flashMessages');

      this.get('attrs.visit').save().then(() => {
        flash.success(this.get('i18n').t('visit.noteUpdated'));
      }, function(response) {
        flash.danger(`Note cannot be updated! ${response.message}`);
      });
    }
  }
});
