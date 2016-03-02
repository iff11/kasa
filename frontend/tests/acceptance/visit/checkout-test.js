import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import formatMoney from 'accounting/format-money';

module('Acceptance | visit/checkout', {
  beforeEach() {
    this.application = startApp();
  },

  afterEach() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic functionality of /visit/:id/checkout', function(assert) {
  assert.expect(5);

  let mockItems = server.createList('item', 10);
  let mockCustomer = server.create('customer');
  let priceWithTip = 10000;
  let receivedAmount = 20000;

  let mockVisit = server.create('visit', { customerId: mockCustomer.id, completed: false });
  let sell1 = server.create('sell', { visitId: mockVisit.id, itemId: mockItems[0].id });
  let sell2 = server.create('sell', { visitId: mockVisit.id, itemId: mockItems[1].id });
  let sell3 = server.create('sell', { visitId: mockVisit.id, itemId: mockItems[2].id });

  visit(`/visit/${mockVisit.id}/checkout`);

  andThen(function() {
    assert.equal(find('.visit-checkout-back-btn').length, 1, 'Back button');
    assert.equal(find('.visit-checkout-sells').length, 1, 'Sells table');
    assert.equal(find('.visit-checkout-sells tbody tr').length, 3, 'Sells table has correct number of items');
  });

  fillIn('.visit-checkout-price-with-tip', priceWithTip);
  fillIn('.visit-checkout-received-amount', receivedAmount);

  andThen(function() {
    let expectedTip = formatMoney(priceWithTip - sell1.price * sell1.count - sell2.price * sell2.count - sell3.price * sell3.count, { symbol: 'Kč', format: '%v %s' });
    let expectedReturnAmount = formatMoney(receivedAmount - priceWithTip, { symbol: 'Kč', format: '%v %s' });
    assert.equal(find('.visit-checkout-tip').text(), expectedTip, `Tip amount should be ${expectedTip}`);
    assert.equal(find('.visit-checkout-return-amount').text(), expectedReturnAmount, `To return amount should be ${expectedReturnAmount}`);
  });
});
