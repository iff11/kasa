import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  description: DS.attr(),
  sellingPrice: DS.attr(),
  bought: DS.attr('number'),
  sold: DS.attr('number'),
  unlimited: DS.attr(),
  barcode: DS.attr(),
  actual_count: DS.attr(),
  warningThreshold: DS.attr(),
  isActive: DS.attr(),

  sells: DS.hasMany('sell', {async: true}),
  supplies: DS.hasMany('supply', {async: true}),
  lastSupply: DS.belongsTo('supply', {async: true, inverse: 'lastSupplyFor'}),

  lowStock: function() {
    return this.get('stock') <= this.get('warningThreshold');
  }.property('stock', 'warningThreshold'),

  scanner_string: function() {
    return this.get('name') + ' - ' + this.get('barcode');
  }.property('name', 'barcode'),

  stock: function() {
    return this.get('bought') - this.get('sold');
  }.property('bought', 'sold'),

  margin: function() {
    var employeeMargin = 0.1,
        sellingPrice = this.get('sellingPrice'),
        purchasePriceWithVat = this.get('lastSupply.purchasePriceWithVat'),
        roughMargin = ((1 - employeeMargin) * sellingPrice - purchasePriceWithVat) / purchasePriceWithVat * 100,
        margin = Math.round(roughMargin).toFixed(1);

    return margin;
  }.property('sellingPrice', 'lastSupply.purchasePriceWithVat')
});
