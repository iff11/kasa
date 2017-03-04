import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  invoiceHeader: DS.attr('string'),
  vatid: DS.attr('string'),
  premisesid: DS.attr('string'),
  registerid: DS.attr('string'),
  // certificate: DS.attr('string'),
  // certificate_password: DS.attr('string')
  // company: DS.belongsTo('company', { async: true })
});
