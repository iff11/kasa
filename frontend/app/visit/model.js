import DS from 'ember-data';

export default DS.Model.extend({
  note: DS.attr(),
  total_price: DS.attr(),
  completed: DS.attr(),
  date: DS.attr(),

  customer: DS.belongsTo('customer', {async: true}),
  sells: DS.hasMany('sell', {async: true})
});
