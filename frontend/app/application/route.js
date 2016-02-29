import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  session: Ember.inject.service(),

  actions: {
    logout() {
      this.get('session').invalidate();
    }
  },

  model() {
    if (this.get('session.isAuthenticated')) {
      return Ember.RSVP.hash({
        // items: this.store.findAll('item'),
        // visits: this.store.filter('visit', { completed: false }, function() { return true; }),
        customers: this.store.findAll('customer')
        // sells: this.store.findAll('sell'),
        // supplies: this.store.findAll('supply'),
        // emplyees: this.store.findAll('employee')
      });
    }
  },

  setupController(controller, model) {
    if (this.get('session.isAuthenticated')) {
      controller.set('attrs.customers', model.customers);
    }
  }
});
