import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  ratio: 0.1,

  selectedMonth: null,
  months: function() {
    // TODO: start should be decided based on employee created_at
    var start = moment('2015-01'),
        end = moment(),
        months = end.diff(start, 'months'),
        ret = [];

    for(var i=0; i<months; i++) {
      start.add(1, 'months');
      ret.push(
        {
          text: start.format('MMMM YYYY'),
          value: start.format('YYYY-MM')
        }
      );
    }

    return ret;
  }.property(),

  visits: function() {
    var selected = moment(this.get('selectedMonth.value')),
        selMonth = selected.month(),
        selYear = selected.year();

    return this.get('attrs.employee.visits').filter(function(visit) {
      var then = moment(visit.get('date')),
          thenMonth = then.month(),
          thenYear = then.year();

          return thenYear === selYear && thenMonth === selMonth;
    });
  }.property('attrs.employee.visits.@each', 'selectedMonth')
});
