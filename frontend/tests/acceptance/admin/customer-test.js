import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';
import moment from 'moment';

moduleForAcceptance('Acceptance | admin/customer');

test('visiting /admin/customer', function(assert) {
  assert.expect(14);

  const format = 'DD.MM.YYYY';
  let john = server.create('customer');
  let visits = server.createList('visit', 3, {customerId: john.id});
  let v = visits[0];

  let mirek = server.create('customer');

  visit(`/admin/customer/${john.id}`);

  andThen(function() {
    assert.equal(find('.admin-customer-heading').length, 1, 'Heading is in place');
    assert.equal(find('.admin-customer-form-note .form-control').val(), john.note, 'Note is ok');
    assert.equal(find('.admin-customer-form-first-name .form-control').val(), john.firstName, 'First name is ok');
    assert.equal(find('.admin-customer-form-last-name .form-control').val(), john.lastName, 'Last name is ok');
    assert.equal(find('.admin-customer-form-birth .form-control').val(), moment(john.birth).format('DD.MM.YYYY'), 'Birth is ok');
    assert.equal(find('.admin-customer-form-phone .form-control').val(), john.phone, 'Phone is ok');
    assert.equal(find('.admin-customer-form-mail .form-control').val(), john.mail, 'Mail is ok');
    assert.equal(find('.list-group-item:nth-of-type(1) .admin-customer-visits-updated-at').text(), moment(v.updatedAt).format('DD.MM.'), 'First line has correct date');
  });

  fillIn('.admin-customer-form-note .form-control', mirek.note);
  fillIn('.admin-customer-form-first-name .form-control', mirek.firstName);
  fillIn('.admin-customer-form-last-name .form-control', mirek.lastName);
  fillIn('.admin-customer-form-birth .form-control', moment(mirek.birth).format(format));
  fillIn('.admin-customer-form-phone .form-control', mirek.phone);
  fillIn('.admin-customer-form-mail .form-control', mirek.mail);
  click('.admin-customer-update');

  andThen(function() {
    let newJohn = server.db.customers.find(john.id);
    assert.equal(find('.admin-customer-form-note .form-control').val(), newJohn.note, 'Note is ok after update');
    assert.equal(find('.admin-customer-form-first-name .form-control').val(), newJohn.firstName, 'First name is ok after update');
    assert.equal(find('.admin-customer-form-last-name .form-control').val(), newJohn.lastName, 'Last name is ok after update');
    assert.equal(find('.admin-customer-form-birth .form-control').val(), moment(newJohn.birth).format(format), 'Birth is ok after update');
    assert.equal(find('.admin-customer-form-phone .form-control').val(), newJohn.phone, 'Phone is ok after update');
    assert.equal(find('.admin-customer-form-mail .form-control').val(), newJohn.mail, 'Mail is ok after update');
  });
});
