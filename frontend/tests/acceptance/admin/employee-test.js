import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';
import moment from 'moment';
import formatMoney from "accounting/format-money";

moduleForAcceptance('Acceptance | admin/employee');

test('visiting /admin/employee', function(assert) {
  assert.expect(16);

  let employees = server.createList('employee', 3);
  let customer = server.create('customer');
  let [john] = employees;
  let now = moment();
  let year = now.year();
  let month = now.month() + 1;
  let visits = server.createList('visit', 3, { employeeId: john.id, customerId: customer.id }); // We don't sort it now. AFAIK a bug: .sortBy('updatedAt').reverse();
  server.createList('item', 10);
  server.createList('sell', 3, { visitId: visits[0].id });

  // TODO: We need to refresh the data here
  visits = server.schema.visits.all().models;

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
      assert.equal($columns.eq(2).text(), `${visit.price}.00 Kč`, `Row #${i} price is correct`);
      let employeeShareSale = formatMoney(visit.employeeShareSale, {symbol: 'Kč', format: '%v %s'});
      let employeeShareService = formatMoney(visit.employeeShareService, {symbol: 'Kč', format: '%v %s'});
      let employeeShare = formatMoney(visit.employeeShareSale + visit.employeeShareService, {symbol: 'Kč', format: '%v %s'});
      assert.equal($columns.eq(3).text(), `${employeeShareSale} + ${employeeShareService} = ${employeeShare}`, `Row #${i} employee share is correct`);
    });

    let sumPrice = visits.reduce(function (previousValue, visit) {
      return previousValue + visit.price;
    }, 0);
    let sumPriceFormat = formatMoney(sumPrice, {symbol: 'Kč', format: '%v %s'});

    let sumEmployeeShareSale = visits.reduce(function (previousValue, visit) {
      return previousValue + visit.employeeShareSale;
    }, 0);
    let sumEmployeeShareSaleFormat = formatMoney(sumEmployeeShareSale, {symbol: 'Kč', format: '%v %s'});

    let sumEmployeeShareService = visits.reduce(function (previousValue, visit) {
      return previousValue + visit.employeeShareService;
    }, 0);
    let sumEmployeeShareServiceFormat = formatMoney(sumEmployeeShareService, {symbol: 'Kč', format: '%v %s'});
    let sumEmployeeShareFormat = formatMoney(sumEmployeeShareSale + sumEmployeeShareService, {symbol: 'Kč', format: '%v %s'});

    let $row = find('.admin-employee-visits tfoot tr').eq(0);
    let $columns = find('td', $row);
    assert.equal($columns.eq(0).text(), '', 'First column should be empty');
    assert.equal($columns.eq(1).text(), sumPriceFormat, 'Sum is correct');
    assert.equal($columns.eq(2).text(), `${sumEmployeeShareSaleFormat} + ${sumEmployeeShareServiceFormat} = ${sumEmployeeShareFormat}`, 'Employee share is correct');
  });
});
