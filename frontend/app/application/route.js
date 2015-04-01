import Ember from 'ember';
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  model: function() {
    // return Ember.RSVP.hash({
    //   visits: this.store.find('visit'),
    //   customers: this.store.find('customer')
    // });
  },

  setupController: function(controller, model) {
    // controller.set('attrs.visits', model.visits);
    // controller.set('attrs.customers', model.customers);
  }
});
