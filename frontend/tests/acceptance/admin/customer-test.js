import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | admin/customer');

test('visiting /admin/customer', function(assert) {
  assert.expect(13);

  let customers = server.createList('customer', 3);
  let [john, mirek] = customers;
  // We want to ensure that date does not skip to "yesterday"
  // Common pikaday problem. But this test is not really doing what it should.
  // It works event without `useUTC=true` 🐼
  let newBirth = moment().subtract(7, 'days').subtract(6, 'months').subtract(5, 'years').format('DD.MM.YYYY');

  visit(`/admin/customer/${john.id}`);

  andThen(function() {
    assert.equal(find('.admin-customer-heading').length, 1, 'Heading is in place');
    assert.equal(find('.admin-customer-form-note .form-control').val(), john.note, 'Note is ok');
    assert.equal(find('.admin-customer-form-first-name .form-control').val(), john.firstName, 'First name is ok');
    assert.equal(find('.admin-customer-form-last-name .form-control').val(), john.lastName, 'Last name is ok');
    assert.equal(find('.admin-customer-form-birth .form-control').val(), moment(john.birth).format('DD.MM.YYYY'), 'Birth is ok');
    assert.equal(find('.admin-customer-form-phone .form-control').val(), john.phone, 'Phone is ok');
    assert.equal(find('.admin-customer-form-mail .form-control').val(), john.mail, 'Mail is ok');
  });

  fillIn('.admin-customer-form-note .form-control', mirek.note);
  fillIn('.admin-customer-form-first-name .form-control', mirek.firstName);
  fillIn('.admin-customer-form-last-name .form-control', mirek.lastName);
  fillIn('.admin-customer-form-birth .form-control', newBirth);
  fillIn('.admin-customer-form-phone .form-control', mirek.phone);
  fillIn('.admin-customer-form-mail .form-control', mirek.mail);
  click('.admin-customer-update');

  // TODO: We should assert against this, but it looks like that one does not reflect our updates
  // let newJohn = server.schema.db.customers.find(john.id);

  andThen(function() {
    assert.equal(find('.admin-customer-form-note .form-control').val(), mirek.note, 'Note is ok after update');
    assert.equal(find('.admin-customer-form-first-name .form-control').val(), mirek.firstName, 'First name is ok after update');
    assert.equal(find('.admin-customer-form-last-name .form-control').val(), mirek.lastName, 'Last name is ok after update');
    assert.equal(find('.admin-customer-form-birth .form-control').val(), newBirth, 'Birth is ok after update');
    assert.equal(find('.admin-customer-form-phone .form-control').val(), mirek.phone, 'Phone is ok after update');
    assert.equal(find('.admin-customer-form-mail .form-control').val(), mirek.mail, 'Mail is ok after update');
  });
});
