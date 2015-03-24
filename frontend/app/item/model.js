import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  description: DS.attr(),
  purchase_price: DS.attr(),
  selling_price: DS.attr(),
  stock: DS.attr(),
  unlimited: DS.attr(),
  barcode: DS.attr(),
  actual_count: DS.attr()
});
