import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  isInvoicePrintingActive: DS.attr('boolean'),
  invoiceHeader: DS.attr('string'),
  invoiceLogo: DS.attr('string'),
  cashbookBalance: DS.attr('number'),
  address: DS.attr('string'),
  website: DS.attr('string'),
  facebook: DS.attr('string'),
  phone: DS.attr('string'),

  entities: DS.hasMany('entity', { async: true })
});
