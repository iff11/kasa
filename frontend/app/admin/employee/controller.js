import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  ratio: 0.1,

  startingYear: 2015,
  employeeId: Ember.computed.readOnly('attrs.employee.id'),

  years: Ember.computed(function() {
    let startingYear = this.get('startingYear');
    let n = new Date().getFullYear() - startingYear + 1;

    return Array.from(Array(n), (v, k) => k + startingYear)
  })

  // selectedMonth: null,
  // months: function() {
  //   // TODO: start should be decided based on employee created_at
  //   let start = moment('2015-01'),
  //       end = moment(),
  //       months = end.diff(start, 'months'),
  //       ret = [];
  //
  //   for(let i=0; i<months; i++) {
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
