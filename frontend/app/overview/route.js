import Ember from 'ember';
import ENV from 'frontend/config/environment';

export default Ember.Route.extend({
  queryParams: {
    from: { refreshModel: true },
    to: { refreshModel: true }
  },

  model(params) {
    let dateFormat = ENV.app.dateFormat;
    let from, to;
    if(Ember.isEmpty(params.from)) {
      from = moment().format(dateFormat);
    } else {
      from = params.from;
    }
    if(Ember.isEmpty(params.to)) {
      to = moment().format(dateFormat);
    } else {
      to = params.to;
    }

    let visitsQuery = {
      filter: {
        from: from,
        to: to,
      },
      page: {
        size: 1000
      }
    };
    let sellsQuery = {
      filter: {
        visitsFrom: from,
        visitsTo: to,
      },
      page: {
        size: 1000
      }
    };

    return Ember.RSVP.hash({
      visits: this.store.query('visit', visitsQuery),
      entities: this.store.findAll('entity'),
      sells: this.store.query('sell', sellsQuery),
      date: params,
      from: from,
      to: to
    });
  },

  setupController(controller, model) {
    controller.setProperties({
      attrs: {
        visits: model.visits,
        entities: model.entities,
        sells: model.sells
      },
      date: model.date
    });
    controller.setDate('from', model.from);
    controller.setDate('to', model.to);
  }
});
