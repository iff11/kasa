import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  'price_with_tip': DS.attr('number', { defaultValue: 0 }),
  paidInCash: DS.attr('number', { defaultValue: 0 }),
  price: DS.attr('number', { defaultValue: 0 }),
  updatedAt: DS.attr(),
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

  tip: Ember.computed('price_with_tip', 'price', function() {
    return this.get('price_with_tip') - this.get('price');
  }),

  ratio: 0.1,
  employeeShare: Ember.computed('employeeShareSale', 'employeeShareService', function() {
    return this.get('employeeShareSale') + this.get('employeeShareService');
  })
});
