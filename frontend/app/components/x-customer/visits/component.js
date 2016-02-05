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
        customerId = this.get('customerId'),
        query = {
          filter: {
            customer_id: customerId,
            completed: true
          },
          page: {
            size: size
          },
          include: 'employee,sells,customer'
        };

    var promise = store.filter(
      'visit',
      query,
      function (visit) {
        // TODO: visit.get('customer.id') fires unnecessary request
        return visit.get('completed') && visit.get('customer.id') === customerId;
      }
    );

    promise.then((result) => {
      this.set('isLoading', false);
      this.set('visits', result);
    });
  }.observes('customerId').on('init')
});
