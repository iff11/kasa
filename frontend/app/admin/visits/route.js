import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    let now = new Date();

    let query = {
      filter: {
        year: now.getUTCFullYear(),
        month: now.getUTCMonth() + 1,
        day: now.getUTCDate()
      }
    };

    return Ember.RSVP.hash({
      visits: this.store.query('visit', query),
      now: now
    });
  },

  setupController(controller, model) {
    controller.setProperties({
      'attrs.visits': model.visits,
      'selected': model.now
    });
  }
});
