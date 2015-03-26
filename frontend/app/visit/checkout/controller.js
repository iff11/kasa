import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

  return_amount: function () {
    return this.get('attrs.visit.received_amount') - this.get('attrs.visit.price_with_tip')
  }.property('attrs.visit.total_price', 'attrs.visit.price_with_tip', 'attrs.visit.received_amount'),

  actions: {
    confirmCheckout: function() {
      var visit = this.get('attrs.visit'),
          that = this;
      visit.set('completed', true);

      var flash = Ember.get(this, 'flashes');
      visit.save().then(function() {
        flash.success('Successfully saved!');
        that.transitionToRoute('visits');
      }, function(response) {
        flash.danger('Something went wrong!');
      });
    }
  }
});
