import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  description: DS.attr(),
  sellingPrice: DS.attr(),
  bought: DS.attr(),
  sold: DS.attr(),
  unlimited: DS.attr(),
  barcode: DS.attr(),
  actual_count: DS.attr(),
  warningThreshold: DS.attr(),
  isActive: DS.attr(),

  // lastSupply: DS.belongsTo('supply', {async: true}),
  sells: DS.hasMany('sell', {async: true, embedded: 'always'}),
  supplies: DS.hasMany('supply', {async: true, inverse: 'item', embedded: 'always'}),

  lastSupply: function () {
    return this.get('supplies').sortBy('updatedAt:desc').get('firstObject');
  }.property('supplies.@each'),

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
