import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

var items;

module('Acceptance | items', {
  beforeEach: function() {
    this.application = startApp();
    authenticateSession();
    // server.logging = true;
    // Vytvori falesna data pro testovani
    items = server.createList('item', 34);
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Test paging', function(assert) {
  assert.expect(3);

  visit('/items');

  andThen(function () {
    assert.equal(find('.items-row').length, 25, 'Correct number of items on first page');
  });

  click('.arrow.next a');

  andThen(function () {
    assert.equal(find('.items-row').length, 9, 'Correct number of items on second page');
  });

  click('input');
  var expected = items[0].name;
  fillIn('input', expected);

  andThen(function () {
    assert.equal(find('.items-row').length, 1, 'Filter for "test" should return exactly one result');
  });
});
