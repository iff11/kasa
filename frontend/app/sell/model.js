import DS from 'ember-data';

export default DS.Model.extend({
  count: DS.attr(),
  price: DS.attr(),

  item: DS.belongsTo('item', {async: true}),
  visit: DS.belongsTo('visit', {async: true}),

  sum: function() {
    return this.get('count') * this.get('price');
  }.property('count', 'price')
});
