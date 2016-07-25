import Ember from 'ember';
import _ from 'lodash/lodash';

export default Ember.Controller.extend({
  attrs: {},
  ratio: 0.1,

  startingYear: 2015,
  employeeId: Ember.computed.readOnly('attrs.employee.id'),

  years: Ember.computed(function() {
    let startingYear = this.get('startingYear');
    let currentYear = new Date().getFullYear();

    return _.range(startingYear, currentYear + 1);
  })
});
