import { Factory } from 'ember-cli-mirage';

export default Factory.extend({
  count() {
    return faker.random.number(5);
  },
  price() {
    return faker.random.number(25);
  },
  itemId() {
    // We just get random item per sell
    let items = server.db.items;
    return faker.random.number({min: 1, max: items.length});
  },
  afterCreate(sell, server) {
    let visitId = sell.visitId;
    let visit = server.db.visits.find(visitId);
    let item = server.db.items.find(sell.itemId);
    // primitive, but works
    let addition = sell.price * sell.count;
    let price = visit.price + addition;
    let employeeShareService = visit.employeeShareService;
    let employeeShareSale = visit.employeeShareSale;

    if(item.isService) {
      employeeShareService += addition * 0.1;
    } else {
      employeeShareSale += addition * 0.1;
    }

    server.db.visits.update(visitId, {price, employeeShareSale, employeeShareService});
  }
});
