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

test('Sorting by next birthday', function(assert) {
  server.createList('customer', 10);
  assert.expect(3);

  visit('/customers');

  andThen(function () {
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), 'za 7 dní', 'First customer has birthday in 7 days');
  });

  click('.customers-sort-by-next-birthday span');

  andThen(function () {
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), 'za 7 dní', 'First customer has birthday in 7 days');
  });

  click('.customers-sort-by-next-birthday span');

  andThen(function () {
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), 'za 2 měsíce', 'First customer has birthday in 2 months');
  });
});
