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

    var that = this;

    store.query('visit', query).then((result) => {
      that.set('isLoading', false);
      that.set('visits', result);
    });

    //visits = this.get('customer.visits');

  }.observes('customer')
});
