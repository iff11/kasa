import DS from 'ember-data';

export default DS.Model.extend({
  total_price: DS.attr('number'),
  price_with_tip: DS.attr('number'),
  received_amount: DS.attr('number'),
  completed: DS.attr(),
  date: DS.attr(),
  note: DS.attr(),

  customer: DS.belongsTo('customer', {async: true}),
  employee: DS.belongsTo('employee', {async: true}),
  sells: DS.hasMany('sell', {async: true}),

  ratio: 0.1,
  employee_share: function() {
    return this.get('total_price') * this.get('ratio');
  }.property('ratio', 'total_price')
});
