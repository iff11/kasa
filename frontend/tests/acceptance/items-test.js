import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

module('Acceptance | items', {
  beforeEach() {
    this.application = startApp();
  },

  afterEach() {
    Ember.run(this.application, 'destroy');
  }
});

test('Test paging', function(assert) {
  let  items = server.createList('item', 34);
  assert.expect(3);

  visit('/items');

  andThen(function() {
    assert.equal(find('.items-row').length, 25, 'Correct number of items on first page');
  });

  click('.arrow.next a');

  andThen(function() {
    assert.equal(find('.items-row').length, 9, 'Correct number of items on second page');
  });

  click('input');
  let expected = items[0].name;
  fillIn('input', expected);

  andThen(function() {
    assert.equal(find('.items-row').length, 1, 'Filter for "test" should return exactly one result');
  });
});

test('Test sorting', function(assert) {
  let items = server.createList('item', 20);
  let itemsSorted;
  let equals;

  assert.expect(10);

  visit('/items');

  andThen(function() {
    // .trim() oreze bile znaky okolo
    itemsSorted = items.sortBy('name');
    assert.equal(find('.items-row:nth-of-type(1) .items-col-name').text().trim(), itemsSorted[0].name, 'Sort by name is ascending - without click');
  });

  // ### Name

  click('th.items-col-name span');
  andThen(function() {
    // .trim() oreze bile znaky okolo
    itemsSorted = items.sortBy('name').reverse();
    assert.equal(find('.items-row:nth-of-type(1) .items-col-name').text().trim(), itemsSorted[0].name, 'Sort by name is descending');
  });

  // ### Sold

  click('th.items-col-sold span');
  andThen(function() {
    itemsSorted = items.sortBy('sold');
    assert.equal(find('.items-row:nth-of-type(1) .items-col-sold').text(), itemsSorted[0].sold, 'Sort by sold is ascending');
  });
  click('th.items-col-sold span');
  andThen(function() {
    itemsSorted = items.sortBy('sold').reverse();
    assert.equal(find('.items-row:nth-of-type(1) .items-col-sold').text(), itemsSorted[0].sold, 'Sort by sold is descending');
  });

  // ### Bought

  click('th.items-col-bought span');
  andThen(function() {
    itemsSorted = items.sortBy('bought');
    if (itemsSorted[0].unlimited) {
      equals = '∞';
    } else {
      equals = itemsSorted[0].bought;
    }
    assert.equal(find('.items-row:nth-of-type(1) .items-col-bought').text(), equals, 'Sort by bought is ascending');
  });
  click('th.items-col-bought span');
  andThen(function() {
    itemsSorted = items.sortBy('bought').reverse();
    if (itemsSorted[0].unlimited) {
      equals = '∞';
    } else {
      equals = itemsSorted[0].bought;
    }
    assert.equal(find('.items-row:nth-of-type(1) .items-col-bought').text(), equals, 'Sort by bought is descending');
  });

  // ### Price

  click('th.items-col-price span');
  andThen(function() {
    itemsSorted = items.sortBy('sellingPrice');
    assert.equal(find('.items-row:nth-of-type(1) .items-col-price').text(), `${ itemsSorted[0].sellingPrice }.00 Kč`, 'Sort by price is ascending');
  });
  click('th.items-col-price span');
  andThen(function() {
    itemsSorted = items.sortBy('sellingPrice').reverse();
    assert.equal(find('.items-row:nth-of-type(1) .items-col-price').text(), `${ itemsSorted[0].sellingPrice }.00 Kč`, 'Sort by price is descending');
  });

  // ### Stock

  click('th.items-col-stock span');
  andThen(function() {
    itemsSorted = items.sortBy('stock');
    assert.equal(find('.items-row:nth-of-type(1) .items-col-stock').text(), itemsSorted[0].stock, 'Sort by stock is ascending');
  });
  click('th.items-col-stock span');
  andThen(function() {
    itemsSorted = items.sortBy('stock').reverse();
    assert.equal(find('.items-row:nth-of-type(1) .items-col-stock').text(), itemsSorted[0].stock, 'Sort by stock is descending ');
  });
});
