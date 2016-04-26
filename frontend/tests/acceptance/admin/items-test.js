import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';
import formatMoney from 'accounting/format-money';

moduleForAcceptance('Acceptance | admin/items');

test('visiting /admin/items', function(assert) {
  assert.expect(13);
  visit('/admin/items');

  let supplies = server.createList('supply', 10);
  let items = [
    server.create('item', { lastSupply: supplies[0] }),
    server.create('item', { lastSupply: supplies[1] }),
    server.create('item', { lastSupply: supplies[2] })
  ];
  let itemsSorted;
  let index;
  let expect;

  andThen(function() {
    assert.equal(currentURL(), '/admin/items');
    assert.equal(find('.admin-items').length, 1, 'Admin items table');
    assert.equal(find('.admin-items thead .admin-items-col-active').text(), 'Aktivní', 'Is active column');
    assert.equal(find('.admin-items thead .admin-items-col-sale').text(), 'Služba', 'Is service column');
    assert.equal(find('.admin-items thead .admin-items-col-name').text(), 'Název', 'Item name');
    assert.equal(find('.admin-items thead .admin-items-col-stock').text(), 'Koupeno - Prodáno = Skladem', 'Stock column');
    assert.equal(find('.admin-items thead .admin-items-col-purchase-price-vat').text(), 'Poslední nákupní cena s DPH', 'Purchase price with vat column');
    assert.equal(find('.admin-items thead .admin-items-col-selling-price').text(), 'Prodejní cena (s DPH)', 'Selling price column');
    assert.equal(find('.admin-items thead .admin-items-col-margin').text(), 'Marže', 'Margin column');
    assert.equal(find('.admin-items thead .admin-items-col-barcode').text(), 'Čárový kód', 'Barcode column');
    assert.equal(find('.admin-items thead .admin-items-col-action').text(), 'Akce', 'Action column');

    itemsSorted = items.sortBy('name');
    index = itemsSorted[0].lastSupply.id - 1;
    expect = formatMoney(supplies[index].purchasePrice, { symbol: 'Kč', format: '%v %s' });
    assert.equal(find('.admin-items tbody tr:nth-of-type(1) .admin-items-col-purchase-price').text(), expect, 'First row purchase price');
    expect = formatMoney(supplies[index].purchasePriceWithVat, { symbol: 'Kč', format: '%v %s' });
    assert.equal(find('.admin-items tbody tr:nth-of-type(1) .admin-items-col-purchase-price-vat').text(), expect, 'First row purchase price with vat');
  });
});
