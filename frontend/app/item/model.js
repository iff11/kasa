import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  description: DS.attr(),
  selling_price: DS.attr(),
  bought: DS.attr(),
  sold: DS.attr(),
  unlimited: DS.attr(),
  barcode: DS.attr(),
  actual_count: DS.attr(),
  warningThreshold: DS.attr(),

  // TODO: WTF is this? Why is this here twice?
  last_supply: DS.belongsTo('supply', {async: true}),
  lastSupply: function() {
    return this.get('last_supply');
  }.property('last_supply'),

  sells: DS.hasMany('sell', {async: true}),
  supplies: DS.hasMany('supply', {async: true, inverse: 'item'}),

  lowStock: function() {
    return this.get('stock') <= this.get('warningThreshold');
  }.property('stock', 'warningThreshold'),

  scanner_string: function() {
    return this.get('name') + ' - ' + this.get('barcode');
  }.property('name', 'barcode'),

  stock: function() {
    return this.get('bought') - this.get('sold');
  }.property('bought', 'sold')
});
