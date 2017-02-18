import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    let now = moment();
    let year = moment().year();
    // let month = 3;
    let query = {
          filter: {
            year
          },
          page: {
            size: 1000
          },
          include: 'customer'
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
