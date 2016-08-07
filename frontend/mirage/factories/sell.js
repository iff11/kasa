import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  count() {
    return faker.random.number(5);
  },
  price() {
    return faker.random.number(25);
  },
  afterCreate(sell, server) {
    let visitId = sell.visitId;
    let visit = server.db.visits.find(visitId);
    let price = visit.price + sell.price * sell.count;
    server.db.visits.update(visitId, {price: price});
  }
});
