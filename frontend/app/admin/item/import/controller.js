import Ember from 'ember';
import Papa from 'papaparse';

export default Ember.Controller.extend({
  sourceCsv: '',
  items: Ember.computed.alias('model'),

  actions: {
    parseCsv() {
      let config = {};
      let src = this.get('sourceCsv');
      let results = Papa.parse(src, config);
      results.data.forEach((row) => {
        let priceString = row[7] || "";
        let priceMatch = priceString.match(/(\d*\.\d*)/) || [];
        let price = priceMatch[1] || 0;
        this.store.createRecord('item', {
          name: row[2],
          barcode: row[1],
          sellingPrice: price
        });
      });
    },

    deleteItem(item) {
      item.deleteRecord();
    },

    saveItems() {
      this.get('items').forEach((item) => {
        item.save();
      });
    }
  }
});
