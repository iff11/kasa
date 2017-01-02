import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({
      employees: this.store.findAll('employee'),
      periods: this.store.findAll('period')
    })
    // this.store.findAll('period');

    // let query = {
    //   include: 'payslips'
    // };
    // return this.store.query('employee', query);
  },

  setupController(controller, model) {
    controller.set('attrs.employees', model.employees);
    controller.set('attrs.periods', model.periods);
  }
});
