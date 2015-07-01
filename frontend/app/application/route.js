import Ember from 'ember';
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  model: function () {
    return Ember.RSVP.hash({
      items: this.store.find('item'),
      visits: this.store.find('visit'),
      customers: this.store.find('customer'),
      // sells: this.store.find('sell'),
      // supplies: this.store.find('supply'),
      emplyees: this.store.find('employee')
    });
  }
});
