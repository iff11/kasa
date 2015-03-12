import Ember from 'ember';

export default Ember.Route.extend({
  model: function (params) {
    return this.store.find('visit', params.id);
  },

  setupController: function(controller, model) {
    controller.set('attrs.visit', model);
  }

  // renderTemplate: function() {
  //   this.render({ outlet: 'foo' });
  // }
});
