import Ember from 'ember';

export default Ember.Controller.extend({
  currentEvents: Ember.computed('model.[]', function() {
    return this.get('model').map(function(visit) {
      return {
        title: visit.get('customer.fullName'),
        start: visit.get('createdAt'),
        id: visit.get('id')
      };
    });
  }),

  actions: {
    eventClicked(visit) {
      this.transitionTo('admin.visit', visit.id);
    }
  }
});
