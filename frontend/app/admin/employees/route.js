import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    // this.store.findAll('period');
    return this.store.findAll('employee');

    // let query = {
    //   include: 'payslips'
    // };
    // return this.store.query('employee', query);
  },

  setupController(controller, model) {
    controller.set('attrs.employees', model);
  }
});
