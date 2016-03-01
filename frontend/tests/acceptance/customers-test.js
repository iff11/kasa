import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

module('Acceptance | customers', {
  beforeEach() {
    this.application = startApp();
  },

  afterEach() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic layout', function(assert) {
  assert.expect(1);

  assert.ok(find('.cusotmers-new-customer'), 'Button for creating new customer');
});

test('Sorting by next birthday', function(assert) {
  assert.expect(2);

  let customers = server.createList('customer', 10);
  let customersSorted;
  let expect;
  let now = moment();

  visit('/customers');

  andThen(function() {
    customersSorted = customers.sortBy('nextBirthday'); // default sorting
    expect = now.to(customersSorted[0].nextBirthday);
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), expect, `Initially, first customer has birthday: ${ expect }`);
  });

  click('.customers-sort-by-next-birthday .th-sort');

  andThen(function() {
    customersSorted = customers.sortBy('nextBirthday').reverse();
    expect = now.to(customersSorted[0].nextBirthday);
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), expect, `After sort, first customer has birthday: ${ expect }`);
  });
});
