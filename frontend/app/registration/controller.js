import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  session: Ember.inject.service(),

  logoutAttempts: 0,
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

  isFormValid: Ember.computed('isFirstNameValid', 'isLastNameValid', 'isPhoneValid', function () {
    return this.get('isFirstNameValid') && this.get('isLastNameValid') && this.get('isPhoneValid');
  }),

  isFirstNameValid: Ember.computed('attrs.customer.firstName', function () {
    return !Ember.isEmpty(this.get('attrs.customer.firstName'));
  }),
  isLastNameValid: Ember.computed('attrs.customer.lastName', function () {
    return !Ember.isEmpty(this.get('attrs.customer.lastName'));
  }),
  isPhoneValid: Ember.computed('attrs.customer.phone', function () {
    return !Ember.isEmpty(this.get('attrs.customer.phone'));
  }),

  resetLogoutAttempts() {
    this.set('logoutAttempts', 0);
  },

  actions: {
    tryLogout() {
      let attempts = this.incrementProperty('logoutAttempts');
      if(attempts >= 5) {
        this.get('session').invalidate();
      }

      Ember.run.debounce(this, this.resetLogoutAttempts, 500);
    },
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
