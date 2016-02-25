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
  assert.expect(8);
  
  var customersSorted,
      customers = server.createList('customer', 3);
  server.createList('item', 34);

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

  click('th.admin-customers-col-first-name .th-sort');
  andThen(function () {
    customersSorted = customers.sortBy('firstName');
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(3)').text(), customersSorted[0].firstName, 'Sorting by first name');
  });

  click('th.admin-customers-col-last-name .th-sort');
  andThen(function () {
    customersSorted = customers.sortBy('lastName');
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(4)').text(), customersSorted[0].lastName, 'Sorting by last name');
  });

  click('th.admin-customers-col-birth .th-sort');
  andThen(function () {
    customersSorted = customers.sortBy('birth');
    var expected = moment(customersSorted[0].birth).format("DD.MM");
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(5)').text(), expected, 'Sorting by birth');
  });

  click('th.admin-customers-col-phone .th-sort');
  andThen(function () {
    customersSorted = customers.sortBy('phone');
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(6)').text(), customersSorted[0].phone, 'Sorting by phone');
  });

  click('th.admin-customers-col-mail .th-sort');
  andThen(function () {
    customersSorted = customers.sortBy('mail');
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(7)').text(), customersSorted[0].mail, 'Sorting by mail');
  });

  click('th.admin-customers-col-note .th-sort');
  andThen(function () {
    customersSorted = customers.sortBy('note');
    assert.equal(find('.admin-customers tbody tr:nth-of-type(1) td:nth-of-type(8)').text(), customersSorted[0].note, 'Sorting by note');
  });
});
