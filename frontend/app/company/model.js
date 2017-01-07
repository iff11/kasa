import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  entities: DS.hasMany('entity', { async: true })
});
