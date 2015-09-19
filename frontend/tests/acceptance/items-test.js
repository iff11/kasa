import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import pretenderHelper from '../helpers/pretender';

module('Acceptance | items', {
  beforeEach: function() {
    this.application = startApp();
    authenticateSession();
    pretenderHelper.start();
  },

  afterEach: function() {
    pretenderHelper.destroy();
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
  fillIn('input','test');

  andThen(function () {
    assert.equal(find('.items-row').length, 1, 'Filter for "test" should return exactly one result');
  });
});
