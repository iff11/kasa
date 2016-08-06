import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';
import moment from 'moment';

moduleForAcceptance('Acceptance | admin/employee');

test('visiting /admin/employee', function(assert) {
  assert.expect(10);

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
    let $rows = find('.admin-employee-visits tbody tr');

    visits.forEach(function(visit, i) {
      let $row = $rows.eq(i);
      let $columns = find('td', $row);

      assert.equal($columns.eq(0).text(), moment(visit.updatedAt).format('LLL'), `Row #${i} date is correct`);
      assert.equal($columns.eq(1).text(), `${visit.customer.firstName} ${visit.customer.lastName}`, `Row #${i} customer name is correct`);
      // TODO: Enable this after we get rid of visit.total_price
      // assert.equal($columns.eq(2).text(), `${visit.price}.00 Kč`, `Row #${i} price is correct`);
      assert.equal($columns.eq(3).text(), `${visit.employeeShareSale}.00 Kč + ${visit.employeeShareService}.00 Kč = ${visit.employeeShareSale + visit.employeeShareService}.00 Kč`, `Row #${i} employee share is correct`);
    });
  });
});
