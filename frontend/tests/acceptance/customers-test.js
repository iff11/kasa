import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

module('Acceptance | customers', {
  beforeEach: function() {
    this.application = startApp();
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic layout', function(assert) {
  assert.expect(1);

  assert.ok(find('.cusotmers-new-customer'), 'Button for creating new customer');
});

test('Sorting by next birthday', function(assert) {
  assert.expect(2);

  var customers = server.createList('customer', 10),
      customersSorted,
      expect,
      now = moment();

  visit('/customers');

  andThen(function () {
    customersSorted = customers.sortBy('nextBirthday'); // default sorting
    expect = now.to(customersSorted[0].nextBirthday);
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), expect, `Initially, first customer has birthday: ${expect}`);
  });

  click('.customers-sort-by-next-birthday .th-sort');

  andThen(function () {
    customersSorted = customers.sortBy('nextBirthday').reverse();
    expect = now.to(customersSorted[0].nextBirthday);
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), expect, `After sort, first customer has birthday: ${expect}`);
  });
});
