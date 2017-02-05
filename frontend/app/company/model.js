import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  isInvoicePrintingActive: DS.attr('boolean'),
  invoiceHeader: DS.attr('string'),

  entities: DS.hasMany('entity', { async: true })
});
