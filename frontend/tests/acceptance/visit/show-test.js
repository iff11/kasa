import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

module('Acceptance | visit/show', {
  beforeEach() {
    this.application = startApp();
  },

  afterEach() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic layout of /visit/:id/show', function(assert) {
  assert.expect(19);

  let mockItems = server.createList('item', 10);
  let mockCustomer = server.create('customer');
  let mockClosedVisits = server.createList('visit', 3, { customerId: mockCustomer.id, completed: true });
  let mockSell = server.create('sell', { visitId: mockClosedVisits[0].id, itemId: mockItems[0].id });
  server.create('sell', { visitId: mockClosedVisits[0].id, itemId: mockItems[1].id });
  server.create('sell', { visitId: mockClosedVisits[0].id, itemId: mockItems[2].id });

  let mockVisit = server.create('visit', { customerId: mockCustomer.id, completed: false });
  server.create('sell', { visitId: mockVisit.id, itemId: mockItems[0].id });
  server.create('sell', { visitId: mockVisit.id, itemId: mockItems[1].id });
  server.create('sell', { visitId: mockVisit.id, itemId: mockItems[2].id });

  visit(`/visit/${mockVisit.id}/show`);

  andThen(function() {
    assert.equal(find('.visit-customer-first-name').text().trim(), mockCustomer.firstName, 'Check customer first name');
    assert.equal(find('.visit-customer-last-name').text().trim(), mockCustomer.lastName, 'Check customer last name');

    assert.equal(find('.visit-sells').length, 1, 'List of current sells');
    assert.equal(find('.visit-sell-row-show').length, 3, '3 sells in current visit');
    assert.equal(find('.visit-sell:nth-child(1) .visit-sell-item-name').text().trim(), mockItems[0].name, `First sell has item named ${mockItems[0].name}`);
    assert.equal(find('.visit-note-editor').val(), mockVisit.note, 'Visit note is displayed properly');

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
