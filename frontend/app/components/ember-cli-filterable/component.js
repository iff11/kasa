import Ember from 'ember';

export default Ember.Component.extend({
  isWaiting: false,

  onFilterStringChange: function () {
    this.set('isWaiting', true);

    Ember.run.debounce(this, this.updateFilter, 1000);
  }.observes('filterString', 'inputArray.[]').on('init'),

  updateFilter: function () {
    var filterString = this.get('filterString'),
        filteredArray = [];

    if (Ember.isEmpty(filterString)) {
      filteredArray = this.get('inputArray');
    } else {
      var regexp = new RegExp(filterString, 'i'),
          filterBy = this.get('filterBy');
      filteredArray = this.get('inputArray').filter( function(item){
        var properties = _.values(item.getProperties(filterBy)).join();
        return properties.match(regexp);
      });
    }

    this.set('isWaiting', false);

    this.sendAction('action', filteredArray);
  }
});
