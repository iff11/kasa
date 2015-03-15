import DS from 'ember-data';

export default DS.Model.extend({
  total_price: DS.attr(),
  completed: DS.attr(),
  date: DS.attr(),
  note: DS.attr(),

  customer: DS.belongsTo('customer', {async: true}),
  employee: DS.belongsTo('employee', {async: true}),
  sells: DS.hasMany('sell', {async: true})
});
