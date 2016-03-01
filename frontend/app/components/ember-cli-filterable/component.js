import Ember from 'ember';

export default Ember.Component.extend({
  isWaiting: false,

  onFilterStringChange: Ember.observer('filterString', 'inputArray.[]', function() {
    this.set('isWaiting', true);

    Ember.run.debounce(this, this.updateFilter, 1000);
  }).on('init'),

  updateFilter() {
    let filterString = this.get('filterString');
    let filteredArray = [];

    if (Ember.isEmpty(filterString)) {
      filteredArray = this.get('inputArray');
    } else {
      let regexp = new RegExp(filterString, 'i');
      let filterBy = this.get('filterBy');

      filteredArray = this.get('inputArray').filter(function(item) {
        let properties = _.values(item.getProperties(filterBy)).join();
        return properties.match(regexp);
      });
    }

    this.set('isWaiting', false);

    this.sendAction('action', filteredArray);
  }
});
