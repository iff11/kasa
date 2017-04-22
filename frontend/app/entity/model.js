import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  invoiceHeader: DS.attr('string'),
  vatid: DS.attr('string', { defaultValue: "" }),
  premisesid: DS.attr('string', { defaultValue: "" }),
  registerid: DS.attr('string', { defaultValue: "" }),
  sendEet: DS.attr('boolean'),
  headquarters: DS.attr('string'),
  identificationNumber: DS.attr('string'),
  businessRegister: DS.attr('string'),
  isVatPayer: DS.attr('boolean')
  // certificate: DS.attr('string'),
  // certificate_password: DS.attr('string')
  // company: DS.belongsTo('company', { async: true })
});
