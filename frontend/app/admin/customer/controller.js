import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  attrs: {},

  genders: Ember.computed(function () {
    return [
      { label: this.get('i18n').t('customer.genders.male'), value: 'male' },
      { label: this.get('i18n').t('customer.genders.female'), value: 'female' }
    ];
  })
});
