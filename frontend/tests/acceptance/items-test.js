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
  assert.expect(2);

  visit('/items');

  andThen(function () {
    assert.equal(find('.items-row').length, 10, 'Correct number of items on first page');
  });

  click('.arrow.next a');

  andThen(function () {
    assert.equal(find('.items-row').length, 4, 'Correct number of items on second page');
  });
});
