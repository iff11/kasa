import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

module('Acceptance | admin | customers', {
  beforeEach: function() {
    this.application = startApp();
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic layout', function(assert) {
  server.createList('item', 34);
  server.createList('customer', 3);
  assert.expect(2);

  visit('/admin/customers');

  andThen(function () {
    assert.equal(find('.admin-customers-header-button-newsletter').length, 1, 'Newsletter button is in place');
    assert.equal(find('.admin-customers-header-button-add').length, 1, 'Add customer button is in place');
  });
});

test('Table sorting', function(assert) {
  var customersSorted,
      customers = server.createList('customer', 3);
  server.createList('item', 34);
  assert.expect(2);

  visit('/admin/customers');

  andThen(function () {
    customersSorted = customers.sortBy('visitsCount').reverse();
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(1)').text(), customersSorted[0].visitsCount, 'Default sorting is by visits count desc');
  });

  click('th.admin-customers-col-last-visit .th-sort');

  andThen(function () {
    customersSorted = customers.sortBy('lastVisitDate');
    var expect = moment().to(customersSorted[0].lastVisitDate);
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(2)').text(), expect, 'Sorting by last visit date');
  });
});
