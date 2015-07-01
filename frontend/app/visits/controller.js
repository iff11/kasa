import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: [],
  heap: {},

  customers: function() {
    return this.store.all('customer');
  }.property(),

  employees: function() {
    return this.store.all('employee');
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
      var that = this;

      visit.save().then(function() {
        that.transitionToRoute('visit.show', visit);
      });
    }
  }
});
