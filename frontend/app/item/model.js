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

  // lastSupply: function () {
  //   return this.get('supplies').sortBy('updatedAt:desc').get('firstObject');
  // }.property('supplies.@each'),

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
    // TODO: This should be some globally configurable employee margin
    return Math.round(((1 - 0.1) * this.get('sellingPrice') - this.get('lastSupply.purchasePriceWithVat')) / this.get('lastSupply.purchasePriceWithVat') * 100).toFixed(1);
  }.property('sellingPrice', 'lastSupply')
});
