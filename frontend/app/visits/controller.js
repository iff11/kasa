import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: [],
  heap: {},

  customers: function() {
    return this.store.find('customer');
  }.property(),

  employees: function() {
    return this.store.find('employee');
  }.property(),

  openVisits: function() {
    return this.get('attrs.visits').filterBy('completed', false);
  }.property('attrs.visits.@each.completed'),

  actions: {
    createVisit: function() {
      var visit = this.store.createRecord('visit', {
        customer: this.get('heap.customer'),
        employee: this.get('heap.employee')
      });
      visit.save();
    }
  }
});
