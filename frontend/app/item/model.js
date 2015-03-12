import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  description: DS.attr(),
  default_price: DS.attr(),
  stock: DS.attr(),
  unlimited: DS.attr(),
  barcode: DS.attr()
});
