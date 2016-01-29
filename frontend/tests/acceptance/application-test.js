import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import { currentSession, authenticateSession, invalidateSession } from 'frontend/tests/helpers/ember-simple-auth';
var items;

module('Acceptance | customers', {
  beforeEach: function() {
    this.application = startApp();
    server.logging = true;

    items = server.createList('visits', 10);
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Application layout for administrator', function(assert) {
  assert.expect(1);

  authenticateSession(this.application, {isAdmin: true});

  visit('/visits');

  andThen(function () {
    assert.equal(find('.heading-admin').length, 1, 'Admin sidebar header is rendered');
  });
});

test('Application layout for employee', function(assert) {
  assert.expect(1);

  authenticateSession(this.application, {isAdmin: false});

  visit('/visits');

  andThen(function () {
    assert.equal(find('.heading-admin').length, 0, 'Admin sidebar header is not rendered');
  });
});
