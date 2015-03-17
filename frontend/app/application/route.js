import Ember from 'ember';
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  model: function() {
    return {
      visits: this.store.find('visit'),
    };
  },

  setupController: function(controller, model) {
    controller.set('attrs.visits', model.visits);
  }
});
