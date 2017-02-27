import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  count: DS.attr('number', { defaultValue: 0 }),
  price: DS.attr('number', { defaultValue: 0 }),
  updatedAt: DS.attr(),

  item: DS.belongsTo('item', { async: true }),
  visit: DS.belongsTo('visit', { async: true }),
  entity: DS.belongsTo('entity', { async: true }),

  sum: Ember.computed('count', 'price', function() {
    return this.get('count') * this.get('price');
  })
});
