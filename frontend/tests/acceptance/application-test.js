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

test('Application layout', function(assert) {
  var  items = server.createList('visits', 10);
  assert.expect(0);

  visit('/visits');

  andThen(function () {
    // assert.equal(find('title').text().trim(), 'kasa | topstylesalon.cz', 'Application title tag contains correct data.');
  });
});
