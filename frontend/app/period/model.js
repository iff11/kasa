import DS from 'ember-data';

export default DS.Model.extend({
  isActive: DS.attr('boolean'),
  
  payslips: DS.hasMany('payslip')
});
