import Ember from 'ember';

export default Ember.Route.extend({
  beforeModel() {
    let now = new Date();
    let year = now.getUTCFullYear();
    let month = now.getUTCMonth() + 1;
    let day = now.getUTCDate();

    this.transitionTo('overview.day', year, month, day);
  }
});
