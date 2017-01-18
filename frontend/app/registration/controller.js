import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  attrs: {
    customer: {}
  },

  // TODO: this is copy-paste, DRY this
  genders: Ember.computed(function () {
    return [
      { label: this.get('i18n').t('customer.genders.male'), value: 'male' },
      { label: this.get('i18n').t('customer.genders.female'), value: 'female' }
    ];
  }),

  isFormInvalid: Ember.computed('attrs.customer.firstName', 'attrs.customer.lastName', 'attrs.customer.phone', function () {
    let firstName = this.get('attrs.customer.firstName');
    let lastName = this.get('attrs.customer.lastName');
    let phone = this.get('attrs.customer.phone');

    return Ember.isEmpty(firstName) || Ember.isEmpty(lastName) || Ember.isEmpty(phone);
  }),

  actions: {
    birthdayChanged(newBirthday) {
      this.set('attrs.customer.birth', newBirthday);
    },
    saveCustomer(data) {
      let customer = this.store.createRecord('customer', data);
      let flash = Ember.get(this, 'flashMessages');

      customer.save().then(() => {
        flash.success(this.get('i18n').t('registration.success'), { timeout: 5000, sticky: false });
        this.set('attrs.customer', {});
      }, function() {
        flash.danger(this.get('i18n').t('registration.failure'), { timeout: 5000, sticky: false });
      });
    }
  }
});
