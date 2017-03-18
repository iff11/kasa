import DS from 'ember-data';

export default DS.Model.extend({
  amount: DS.attr('number'),
  kind: DS.attr('string'),
  touchedAt: DS.attr('date'),
  note: DS.attr('string'),

  company: DS.belongsTo('company', { async: true }),
  visit: DS.belongsTo('visit', { async: true })
});
