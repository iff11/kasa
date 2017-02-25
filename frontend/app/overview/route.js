import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    let query = {
      filter: {
        year: params.year,
        month: params.month,
        day: params.day
      }
    };

    return Ember.RSVP.hash({
      visits: this.store.query('visit', query),
      date: params
    });
  },

  setupController(controller, model) {
    controller.setProperties({
      'attrs.visits': model.visits,
      date: model.date
    });
    // controller.setDate('from', moment().subtract(1, 'months'));
    // controller.setDate('to', moment());
  }
});
