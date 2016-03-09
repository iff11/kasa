import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | admin/employee');

test('visiting /admin/employee', function(assert) {
  assert.expect(1);

  let employees = server.createList('employee', 3);
  let [john] = employees;
  let now = moment();
  let year = now.year();
  let month = now.month() + 1;
  // let visits = server.createList('visit', { employeeId: john.id });

  visit(`/admin/employee/${john.id}/${year}/${month}`);

  andThen(function() {
    // TODO: filtering does not work here
    assert.equal(find('h2').text(), `${john.firstName} ${john.lastName}`, 'Filtered correct employee');
  });
});
