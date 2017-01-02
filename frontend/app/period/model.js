import DS from 'ember-data';

export default DS.Model.extend({
  isActive: DS.attr('boolean'),
  startDate: DS.attr('date'),

  payslips: DS.hasMany('payslip')
});
