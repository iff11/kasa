import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    var visits = this.store.find('visit'),
        employees = this.store.find('employee');

    return Ember.RSVP.hash({
      visits: visits,
      employees: employees
    });
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model.visits);
    controller.set('attrs.employees', model.employees);
  }
});
