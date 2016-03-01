import Ember from 'ember';

export default Ember.Route.extend({
  beforemodel() {
    this.transitionTo('/login');
  }
});
