import Ember from 'ember';
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  model: function () {
    // TODO: Maybe this should be elsewhere? What happens on first page load when user is logged-out, then this is never processed
    if(this.get('session.isAuthenticated')) {
      return Ember.RSVP.hash({
        items: this.store.find('item'),
        visits: this.store.find('visit'),
        customers: this.store.find('customer'),
        // sells: this.store.find('sell'),
        // supplies: this.store.find('supply'),
        emplyees: this.store.find('employee')
      });
    };
  }
});
