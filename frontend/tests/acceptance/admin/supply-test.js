import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | admin/supply');

test('visiting /admin/supply', function(assert) {
  assert.expect(9);

  let supplies = server.createList('supply', 3);
  server.create('item', { lastSupply: supplies[0].id });
  server.create('item', { lastSupply: supplies[1].id });
  server.create('item', { lastSupply: supplies[2].id });
  let quantity = 10;
  let purchasePrice = 123;
  let sellingPrice = 456;
  let vat = 21;
  let employeeMargin = 0.1;
  let purchasePriceWithVat = purchasePrice * (1 + (vat / 100));
  let roughMargin = ((1 - employeeMargin) * sellingPrice - purchasePriceWithVat) / purchasePriceWithVat * 100;
  let margin = Math.round(roughMargin).toFixed(1);

  visit('/admin/supply');

  andThen(function() {
    assert.equal(currentURL(), '/admin/supply');

    assert.equal(find('.admin-supply').length, 1, 'Admin supply table');
    assert.equal(find('.admin-supply-item label').text(), 'Položka skladu', 'Admin supply item label');
    assert.equal(find('.admin-supply-quantity label').text(), 'Množství', 'Admin supply quantity label');
    assert.equal(find('.admin-supply-purchase-price label').text(), 'Nákupní cena (bez DPH)', 'Admin supply purchase price label');
    assert.equal(find('.admin-supply-selling-price label').text(), 'Prodejní cena (s DPH)', 'Admin supply selling price label');
    assert.equal(find('.admin-supply-vat label').text(), 'DPH nákupu', 'Admin supply vat label');
    assert.equal(find('.admin-supply-margin label').text(), 'Marže', 'Admin supply margin label');
  });

  click('.admin-supply-item .selectize-input');
  click('.admin-supply-item .selectize-dropdown .option:nth-child(1)');
  fillIn('.admin-supply-quantity input', quantity);
  fillIn('.admin-supply-purchase-price input', purchasePrice);
  fillIn('.admin-supply-selling-price input', sellingPrice);

  andThen(function() {
    assert.equal(find('.admin-supply-margin input').val(), margin, 'Margin is calculated correctly');
  });
});
