import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},

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
