import { Factory, faker } from 'ember-cli-mirage';

export default Factory.extend({
  name() {
    return faker.commerce.productName();
  },
  sellingPrice() {
    return faker.random.number(100);
  },
  unlimited() {
    return false;
    // TODO: Waiting for https://github.com/samselikoff/ember-cli-mirage/pull/269
    // return faker.random.boolean();
  },
  bought(i) {
    // TODO: Waiting for https://github.com/samselikoff/ember-cli-mirage/pull/269
    // if(this.unlimited()) {
    //   return 0;
    // } else {
    //  return faker.random.number(100);
    // }
    return i * 10;
  },
  sold(i) {
    // TODO: Waiting for https://github.com/samselikoff/ember-cli-mirage/pull/269
    // return faker.random.number(100);
    return i * 5;
  },
  stock(i) {
    // TODO: Waiting for https://github.com/samselikoff/ember-cli-mirage/pull/269
    return (i * 10) - (i * 5);
  },
  barcode() {
    return faker.random.number({min: 1000000000000, max: 9999999999999});
  },
  warningThreshold() {
    return faker.random.number(10);
  },
  isActive() {
    return faker.random.boolean();
  },
  isService() {
    return faker.random.boolean();
  },
});
