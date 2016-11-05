import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    this.store.findAll('period');

    let query = {
      include: 'current_payslip'
    };
    return this.store.query('employee', query);
  },

  setupController(controller, model) {
    controller.set('attrs.employees', model);
  }
});
