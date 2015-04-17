import DS from 'ember-data';

export default DS.Model.extend({
  purchase_price: DS.attr(),
  quantity: DS.attr(),
  vat: DS.attr(),
  createdAt: DS.attr(),

  item: DS.belongsTo('item', {async: true}),

  sum: function() {
    return this.get('quantity') * this.get('purchase_price');
  }.property('quantity', 'purchase_price'),

  sum_with_vat: function() {
    return this.get('sum') * (1 + this.get('vat') / 100);
  }.property('vat', 'sum'),
});
