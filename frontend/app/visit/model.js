import DS from 'ember-data';

export default DS.Model.extend({
  price_with_tip: DS.attr('number'),
  receivedAmount: DS.attr('number'),
  updatedAt: DS.attr(),
  completed: DS.attr(),
  date: DS.attr(),
  note: DS.attr(),

  customer: DS.belongsTo('customer', {
    async: true,
    inverse: 'visits'
  }),
  employee: DS.belongsTo('employee', {async: true}),
  sells: DS.hasMany('sell', {async: true}),

  total_price: function() {
    return this.get('sells').reduce(function(previousvalue, sell){
        return previousvalue + sell.get("sum");
      }, 0);
  }.property('sells.@each', 'sells.@each.sum'),

  ratio: 0.1,
  employee_share: function() {
    return this.get('total_price') * this.get('ratio');
  }.property('ratio', 'total_price')
});
