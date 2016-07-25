import Ember from 'ember';
import _ from 'lodash/lodash';

export default Ember.Controller.extend({
  months: Ember.computed(function() {
    return _.range(1, 12 + 1);
  })
});
