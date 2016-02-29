import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | customer | show');

test('visiting /customer', function(assert) {
  assert.expect(13);

  let mockItems = server.createList('item', 10);
  let mockCustomer = server.create('customer');
  let mockClosedVisits = server.createList('visit', 3, { customerId: mockCustomer.id, completed: true });
  let mockSell = server.create('sell', { visitId: mockClosedVisits[0].id, itemId: mockItems[0].id });
  server.create('sell', { visitId: mockClosedVisits[0].id, itemId: mockItems[1].id });
  server.create('sell', { visitId: mockClosedVisits[0].id, itemId: mockItems[2].id });

  visit(`/customer/${mockCustomer.id}`);

  andThen(function() {
    assert.equal(find('.customer-visits').length, 1, 'Past visits list is rendered');
    assert.equal(find('.customer-visit').length, 3, 'Past visits list of visits is rendered');
    assert.equal(find('.customer-visit:nth-of-type(1) .customer-visit-heading').length, 1, 'First past visit has heading');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-heading-price').text(), `${mockClosedVisits[0].price}.00 Kč`, 'First visit price');
    assert.equal(find('.customer-visit:nth-child(2) .customer-visit-heading-price').text(), `${mockClosedVisits[1].price}.00 Kč`, 'Second visit price');
    assert.equal(find('.customer-visit:nth-child(3) .customer-visit-heading-price').text(), `${mockClosedVisits[2].price}.00 Kč`, 'Third visit price');
  });

  click('.customer-visit:nth-child(1) a');

  andThen(function() {
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-note').text(), mockClosedVisits[0].note, 'First visit note');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-sell').length, 3, 'First visit number of sells');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-sell').length, 3, 'First visit number of sells');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-sell:nth-child(1) .customer-visit-sell-item-name').text(), mockItems[0].name, 'First visit, first sell item name');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-sell:nth-child(1) .customer-visit-sell-count').text(), mockSell.count, 'First visit, first sell count');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-sell:nth-child(1) .customer-visit-sell-price').text(), `${mockSell.price}.00 Kč`, 'First visit, first sell price');
    assert.equal(find('.customer-visit:nth-child(1) .customer-visit-sell:nth-child(1) .customer-visit-sell-sum').text(), `${mockSell.count * mockSell.price}.00 Kč`, 'First visit, first sell sum');
  });
});
