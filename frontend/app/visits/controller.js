import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: [],
  heap: {},

  actions: {
    createVisit() {
      let visit = this.store.createRecord('visit', {
        customer: this.get('heap.customer'),
        employee: this.get('heap.employee')
      });
      let that = this;

      visit.save().then(function() {
        that.transitionToRoute('visit.show', visit);
      });
    }
  }
});
