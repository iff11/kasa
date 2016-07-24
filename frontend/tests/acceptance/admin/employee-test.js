import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';
import moment from 'moment';

moduleForAcceptance('Acceptance | admin/employee');

test('visiting /admin/employee', function(assert) {
  assert.expect(5);

  let employees = server.createList('employee', 3);
  let customer = server.create('customer');
  let [john] = employees;
  let now = moment();
  let year = now.year();
  let month = now.month() + 1;
  let visits = server.createList('visit', 3, { employeeId: john.id, customerId: customer.id }); // We don't sort it now. AFAIK a bug: .sortBy('updatedAt').reverse();

  visit(`/admin/employee/${john.id}/${year}/${month}`);

  andThen(function() {
    // TODO: filtering does not work here
    assert.equal(find('h2').text(), `${john.firstName} ${john.lastName}`, 'Filtered correct employee');
    let $row = find('.admin-employee-visits tbody tr:nth-of-type(1)');
    let [v] = visits;

    let expectedColumns = [
      moment(v.updatedAt).format('LLL'),
      `${customer.firstName} ${customer.lastName}`,
      '0.00 Kč',
      '0.00 Kč + 0.00 Kč = 0.00 Kč'
    ];

    expectedColumns.forEach(function(column, i) {
      assert.equal(find(`td:nth-of-type(${i + 1})`, $row).text(), column, `Column #${i} is correct`);
    });
  });
});
