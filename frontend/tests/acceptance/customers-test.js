import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import { currentSession, authenticateSession, invalidateSession } from 'frontend/tests/helpers/ember-simple-auth';

module('Acceptance | customers', {
  beforeEach: function() {
    this.application = startApp();
    authenticateSession(this.application, {});
    server.logging = true;
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Sorting by next birthday', function(assert) {
  var  items = server.createList('customer', 10);
  assert.expect(3);

  visit('/customers');

  andThen(function () {
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), 'za 6 dní', 'First customer has birthday in 6 days');
  });

  click('.customers-sort-by-next-birthday span');

  andThen(function () {
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), 'za 6 dní', 'First customer has birthday in 6 days');
  });

  click('.customers-sort-by-next-birthday span');

  andThen(function () {
    assert.equal(find('tbody tr:nth-child(1) .customers-next-birthday').text().trim(), 'za 2 měsíce', 'First customer has birthday in 6 days');
  });
});
