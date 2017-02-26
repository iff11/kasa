import Ember from 'ember';

export default Ember.Route.extend({
  dateFormat: 'YYYY-MM-DD',

  queryParams: {
    from: { refreshModel: true },
    to: { refreshModel: true }
  },

  model(params) {
    let dateFormat = this.get('dateFormat');
    let from, to;
    if(Ember.isEmpty(params.from)) {
      from = moment().subtract(1, 'weeks').format(dateFormat);
    } else {
      from = params.from;
    }
    if(Ember.isEmpty(params.to)) {
      to = moment().format(dateFormat);
    } else {
      to = params.to;
    }

    let query = {
      filter: {
        from: from,
        to: to
      }
    };

    return Ember.RSVP.hash({
      visits: this.store.query('visit', query),
      date: params,
      from: from,
      to: to
    });
  },

  setupController(controller, model) {
    controller.setProperties({
      'attrs.visits': model.visits,
      date: model.date
    });
    controller.setDate('from', model.from);
    controller.setDate('to', model.to);
  }
});
