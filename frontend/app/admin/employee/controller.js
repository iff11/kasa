import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  ratio: 0.1,

  startingYear: 2015,
  employeeId: Ember.computed.readOnly('attrs.employee.id'),

  years: function () {
    return _.range(this.get('startingYear'), new Date().getFullYear() + 1);
  }.property(),

  // selectedMonth: null,
  // months: function() {
  //   // TODO: start should be decided based on employee created_at
  //   var start = moment('2015-01'),
  //       end = moment(),
  //       months = end.diff(start, 'months'),
  //       ret = [];
  //
  //   for(var i=0; i<months; i++) {
  //     start.add(1, 'months');
  //     ret.push(
  //       {
  //         text: start.format('MMMM YYYY'),
  //         value: start.format('YYYY-MM')
  //       }
  //     );
  //   }
  //
  //   return ret;
  // }.property(),
});
