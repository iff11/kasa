import DS from 'ember-data';

export default DS.Model.extend({
  shareSale: DS.attr('number'),
  shareService: DS.attr('number'),

  employee: DS.belongsTo('employee'),
  period: DS.belongsTo('period'),
  
  visits: DS.hasMany('visit')
});
