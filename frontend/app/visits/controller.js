import Ember from 'ember';

export default Ember.Controller.extend({
  settings: Ember.inject.service(),

  attrs: [],
  heap: {},

  actions: {
    createVisit() {
      let visit = this.store.createRecord('visit', {
        customer: this.get('heap.customer'),
        employee: this.get('heap.employee')
      });

      visit.save().then(() => {
        this.transitionToRoute('visit.show', visit);
      });
    }
  }
});
