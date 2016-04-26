import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  purchasePrice(i) {
    return i * 10;
  },
  purchasePriceWithVat(i) {
    return this.purchasePrice * (1 + this.vat/100);
  },
  quantity() {
    return faker.random.number(100);
  },
  vat() {
    return 21;
  }
});
