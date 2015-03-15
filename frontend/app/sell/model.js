import DS from 'ember-data';

export default DS.Model.extend({
  count: DS.attr(),
  price: DS.attr(),

  item: DS.belongsTo('item'),
  visit: DS.belongsTo('visit'),

  sum: function() {
    return this.get('count') * this.get('price');
  }.property('count', 'price')
});
