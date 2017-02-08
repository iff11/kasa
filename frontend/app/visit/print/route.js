import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    let { id } = this.paramsFor('visit');

    return this.store.findRecord('visit', id);
  },

  setupController(controller, model) {
    controller.set('attrs.visit', model);
  },

  actions: {
    print() {
      window.print();
    },
    didTransition: function() {
      this._super(...arguments);
      // TODO: This one won't have everything loaded
      // this.send('print');
    }
  }
});
