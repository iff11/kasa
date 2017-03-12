import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  priceWithTip: DS.attr('number', { defaultValue: 0 }),
  receivedCash: DS.attr('number', { defaultValue: 0 }),
  paidInCash: DS.attr('number', { defaultValue: 0 }),
  paidByCard: DS.attr('number', { defaultValue: 0 }),
  price: DS.attr('number', { defaultValue: 0 }),
  updatedAt: DS.attr('date'),
  createdAt: DS.attr('date'),
  completed: DS.attr(),
  note: DS.attr(),
  employeeShareSale: DS.attr('number', { defaultValue: 0 }),
  employeeShareService: DS.attr('number', { defaultValue: 0 }),

  customer: DS.belongsTo('customer', {
    async: true,
    inverse: 'visits'
  }),
  employee: DS.belongsTo('employee', { async: true }),
  sells: DS.hasMany('sell', { async: true }),
  revenues: DS.hasMany('revenue', { async: true }),
  cashbookEntry: DS.belongsTo('cashbookEntry', { async: true }),

  tip: Ember.computed('priceWithTip', 'price', function() {
    return this.get('priceWithTip') - this.get('price');
  }),

  ratio: 0.1,
  employeeShare: Ember.computed('employeeShareSale', 'employeeShareService', function() {
    return this.get('employeeShareSale') + this.get('employeeShareService');
  })
});
