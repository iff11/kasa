import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    dateSelected(date) {
      this.transitionToRoute('overview.day', date.getUTCFullYear(), date.getUTCMonth() + 1, date.getUTCDate());
    }
  }
});
