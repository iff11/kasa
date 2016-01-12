import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';
import { currentSession, authenticateSession, invalidateSession } from 'frontend/tests/helpers/ember-simple-auth';


module('Acceptance | admin | customers', {
  beforeEach: function() {
    this.application = startApp();
    authenticateSession(this.application, {});
    server.logging = true;
  },

  afterEach: function() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic layout', function(assert) {
 var  items = server.createList('item', 34);
  assert.expect(2);

  visit('/admin/customers');

  andThen(function () {
    assert.equal(find('.admin-customers-header-button-newsletter').length, 1, 'Newsletter button is in place');
    assert.equal(find('.admin-customers-header-button-add').length, 1, 'Add customer button is in place');
  });
});
