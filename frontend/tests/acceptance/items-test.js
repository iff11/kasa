import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import { currentSession, authenticateSession, invalidateSession } from 'frontend/tests/helpers/ember-simple-auth';

module('Acceptance | items', {
  beforeEach: function() {
    this.application = startApp();
    authenticateSession(this.application, {});
    server.logging = true;
    // Vytvori falesna data pro testovani
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Test paging', function(assert) {
 var  items = server.createList('item', 34);
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

test('Test sorting', function(assert) {
  var  items = server.createList('item', 20);
  assert.expect(8);

  visit('/items');

  andThen(function () {
    //.trim() oreze bile znaky okolo
    assert.equal(find('.items-row:nth-of-type(1) .items-col-name').text().trim(), items[0].name, 'First name is ascending- without click');
  });

  click('th.items-col-name span');

  andThen(function () {
    //.trim() oreze bile znaky okolo
    assert.equal(find('.items-row:nth-of-type(1) .items-col-name').text().trim(), items[19].name, 'First name is descending ');
  });

  click('th.items-col-sold span');

  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-sold').text(), items[0].sold, 'First sold is ascending ');
  });

  click('th.items-col-sold span');

  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-sold').text(), items[19].sold, 'First sold is descending ');
  });

  click('th.items-col-bought span');

  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-bought').text(), items[19].bought, 'First sold is ascending ');
  });

  click('th.items-col-bought span');

  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-bought').text(), items[0].bought, 'First sold is descending ');
  });

  click('th.items-col-price span');

/*  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-price').text(), items[0].selling-price, 'First sold is ascending ');
    //return pauseTest();
  });*/

  click('th.items-col-stock span');

  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-stock').text(), items[19].bought-items[19].sold, 'First sold is ascending ');
    //return pauseTest();
  });

  click('th.items-col-stock span');

  andThen(function () {
    assert.equal(find('.items-row:nth-of-type(1) .items-col-stock').text(), items[0].bought-items[0].sold, 'First sold is descending ');
    //return pauseTest();
  });

});
