import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from 'frontend/tests/helpers/start-app';

module('Acceptance | customers', {
  beforeEach() {
    this.application = startApp();
  },

  afterEach() {
    Ember.run(this.application, 'destroy');
  }
});

test('Basic layout', function(assert) {
  let customers = server.createList('customer', 3).sortBy('lastName');
  let john = customers[0];

  assert.expect(4);

  visit('/customers');

  andThen(function () {
    assert.ok(find('.cusotmers-new-customer'), 'Button for creating new customer');
    let $tds = Ember.$('table > tbody > tr > td');
    assert.equal($tds.eq(0).text(), john.lastName, 'Table contains user first name');
    assert.equal($tds.eq(1).text(), john.firstName, 'Table contains user last name');
    assert.equal($tds.eq(2).text(), john.note, 'Table contains user note');
  });
});
