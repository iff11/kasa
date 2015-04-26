import Ember from 'ember';

export default Ember.Route.extend({
  model: function () {
    return this.modelFor('visit');
  },

  setupController: function(controller, model) {
    controller.set('attrs.visit', model);
  },

  actions: {
    willTransition: function(transition) {
      if (this.controller.get('isDirty')) {
        transition.abort();
        Ember.get(this, 'flashMessages').danger(this.t('visit.isDirty'));
      } else {
        return true;
      }
    }
  }
});
