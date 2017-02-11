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
        let cashbookEntry = this.store.createRecord('cashbookEntry', {
          amount: 0,
          when: new Date(),
          kind: 'visit',
          visit: visit,
          company: this.get('settings.company')
        });

        cashbookEntry.save().then(() => {
          this.transitionToRoute('visit.show', visit);
        });
      });
    }
  }
});
