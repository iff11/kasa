import Ember from 'ember';

export default Ember.Component.extend({
  store: Ember.inject.service(),

  classNames: ['panel-group'],
  tagName: 'div',
  isLoading: true,
  size: 10,
  customerId: null,

  visits: [],

  loadVisits: function () {
    this.set('isLoading', true);

    var store = this.get('store'),
        size = this.get('size'),
        customerId = this.get('customer.id'),
        query = {
          filter: {
            customer_id: customerId
          },
          page: {
            size: size
          },
          include: 'employee,sells'
        };

    var promise = store.filter(
      'visit',
      query,
      function (visit) {
        return visit.get('completed');
      }
    );

    promise.then((result) => {
      this.set('isLoading', false);
      this.set('visits', result);
    });
  }.on('init')
});
