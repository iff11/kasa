import Ember from 'ember';
import formatMoney from "accounting/format-money"

export default Ember.Controller.extend({
  attrs: [],

  actions: {
    increaseCount: function(sell) {
      sell.set('count', sell.get('count') + 1);
      sell.save();
    },
    decreaseCount: function(sell) {
      if(sell.get('count') > 0) {
        sell.set('count', sell.get('count') - 1);
        sell.save();
      }
    }
  }
});
