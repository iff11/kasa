import DS from 'ember-data';
import Ember from 'ember';

export default DS.Model.extend({
  name: DS.attr('string'),
  sellingPrice: DS.attr('number', { defaultValue: 0 }),
  bought: DS.attr('number', { defaultValue: 0 }),
  sold: DS.attr('number', { defaultValue: 0 }),
  unlimited: DS.attr('boolean'),
  barcode: DS.attr('number'),
  warningThreshold: DS.attr('number'),
  isActive: DS.attr('boolean'),
  isService: DS.attr('boolean'),

  sells: DS.hasMany('sell', { async: true }),
  supplies: DS.hasMany('supply', { async: true }),
  lastSupply: DS.belongsTo('supply', { async: true, inverse: 'lastSupplyFor' }),
  entity: DS.belongsTo('entity', { async: true }),

  lowStock: Ember.computed('name', 'barcode', function() {
    return this.get('stock') <= this.get('warningThreshold');
  }),

  scannerString: Ember.computed('name', 'barcode', function() {
    let name = this.get('name');
    let barcode = this.get('barcode');

    if(barcode) {
      return `${name} - ${barcode}`;
    } else {
      return name;
    }
  }),

  stock: Ember.computed('bought', 'sold', function() {
    return this.get('bought') - this.get('sold');
  }),

  margin: Ember.computed('sellingPrice', 'lastSupply.purchasePriceWithVat', function() {
    let sellingPrice = this.get('sellingPrice');
    let purchasePriceWithVat = this.get('lastSupply.purchasePriceWithVat');
    let roughMargin = (sellingPrice - purchasePriceWithVat) / purchasePriceWithVat * 100;
    let margin = Math.round(roughMargin).toFixed(1);

    return margin;
  })
});
