import Ember from 'ember';

export default Ember.Component.extend({
  store: Ember.inject.service(),

  classNames: ['panel-group'],
  tagName: 'div',
  isLoading: true,
  size: 10,
  customerId: null,

  visits: [],

  loadVisits: Ember.observer('customerId', function() {
    this.set('isLoading', true);

    let store = this.get('store');
    let size = this.get('size');
    let customerId = this.get('customerId');
    let query = {
          filter: {
            'customer_id': customerId,
            completed: true
          },
          page: {
            size
          },
          include: 'employee,sells,customer'
        };
    let promise = store.filter(
      'visit',
      query,
      function(visit) {
        // TODO: visit.get('customer.id') fires unnecessary request
        return visit.get('completed') && visit.get('customer.id') === customerId;
      }
    );

    promise.then((result) => {
      this.set('isLoading', false);
      this.set('visits', result);
    });
  }).on('init')
});
