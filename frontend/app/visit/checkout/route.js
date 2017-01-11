import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.modelFor('visit');
  },

  setupController(controller, model) {
    if(Ember.isNone(model.get('priceWithTip'))) {
      model.get('sells').then(function(sells) {
        let defaultPrice = sells.reduce(function(previousValue, enumerable) {
          return previousValue + enumerable.get('sum');
        }, 0);
        model.set('price_with_tip', defaultPrice);
      });
    }

    controller.set('attrs.visit', model);
  }
});
