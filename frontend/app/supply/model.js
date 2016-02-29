import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  purchasePrice: DS.attr('number'),
  quantity: DS.attr('number'),
  vat: DS.attr('number'),
  createdAt: DS.attr(),
  updatedAt: DS.attr(),

  item: DS.belongsTo('item', { async: true }),
  lastSupplyFor: DS.hasMany('item', { async: true, inverse: 'lastSupply' }),

  sum: Ember.computed('quantity', 'purchasePrice', function() {
    return this.get('quantity') * this.get('purchasePrice');
  }),

  sumWithVat: Ember.computed('vat', 'sum', function() {
    return this.get('sum') * (1 + this.get('vat') / 100);
  }),

  purchasePriceWithVat: Ember.computed('purchasePrice', 'vat', function() {
    return this.get('purchasePrice') * (1 + this.get('vat') / 100);
  })
});
