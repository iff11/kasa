import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | customer | new');

test('visiting /customer/new', function(assert) {
  assert.expect(4);

  let john = {
    firstName: 'John',
    lastName: 'Doe',
    note: 'A good guy'
  };

  visit('/customer/new');

  andThen(function() {
    fillIn('#first-name', john.firstName);
    fillIn('#last-name', john.lastName);
    fillIn('#note', john.note);
  });

  click('.customer-new-button');

  andThen(function() {
    assert.equal(currentPath(), 'customer.show', 'After creating the user, we get to user detail page.');
    assert.equal(find('.customer-show-first-name').text(), john.firstName, 'First name');
    assert.equal(find('.customer-show-last-name').text(), john.lastName, 'Last name');
    assert.equal(find('.customer-show-note').text(), john.note, 'Note');
  });
});
