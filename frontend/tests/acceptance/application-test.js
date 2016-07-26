import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import { authenticateSession } from 'frontend/tests/helpers/ember-simple-auth';

module('Acceptance | application', {
  beforeEach() {
    this.application = startApp();

    server.createList('visit', 10);
  },

  afterEach() {
    Ember.run(this.application, 'destroy');
  }
});
test('Application layout for administrator', function(assert) {
  assert.expect(3);

  authenticateSession(this.application, { isAdmin: true });

  visit('/');

  andThen(function() {
    assert.equal(currentRouteName(), 'visits.index', 'Index for employee redirects to last visits');
    assert.equal(find('.heading-admin').length, 1, 'Admin sidebar header is rendered');
    assert.equal(find('.menu-top-logout').length, 1, 'Logout button exists');
  });
});

test('Application layout for employee', function(assert) {
  assert.expect(2);

  authenticateSession(this.application, { isAdmin: false });

  visit('/');

  andThen(function() {
    assert.equal(currentRouteName(), 'visits.index', 'Index for admin redirects to last visits');
    assert.equal(find('.heading-admin').length, 0, 'Admin sidebar header is not rendered');
  });
});
