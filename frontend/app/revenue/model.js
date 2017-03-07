import DS from 'ember-data';

export default DS.Model.extend({
  amount: DS.attr('number'),
  fik: DS.attr('string'),
  response: DS.attr('string'),

  visit: DS.belongsTo('visit', { async: true }),
  entity: DS.belongsTo('entity', { async: true })
});
