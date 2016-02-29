import Ember from 'ember';

export default Ember.Controller.extend({
  heap: {},

  actions: {
    createCustomer() {
      let customer = this.store.createRecord('customer', this.get('heap'));
      let flash = Ember.get(this, 'flashMessages');

      this.set('heap', {});

      customer.save().then((newCustomer) => {
        let firstName = newCustomer.get('firstName');
        let lastName = newCustomer.get('lastName');

        flash.success(`${firstName } ${lastName } created`);
        this.transitionTo('customer.show', newCustomer);
      }, (err) => {
        console.log(err);
        flash.danger(`Cannot save customer: ${err.message }`);
      });
    }
  }
});
