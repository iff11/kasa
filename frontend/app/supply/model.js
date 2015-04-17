import DS from 'ember-data';

export default DS.Model.extend({
  purchase_price: DS.attr(),
  quantity: DS.attr(),
  vat: DS.attr(),

  item: DS.belongsTo('item', {async: true}),
});
