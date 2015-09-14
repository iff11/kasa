import Ember from 'ember';

export default Ember.Component.extend({
  filteredArray: function () {
    var filterString = this.get('filterString');
    if (Ember.isEmpty(filterString)) {
      return this.get('inputArray');
    } else {
      var regexp = new RegExp(filterString, 'i'),
          filterBy = this.get('filterBy');
      return this.get('inputArray').filter( function(item){
        var properties = _.values(item.getProperties(filterBy)).join();
        return properties.match(regexp);
      });
    }
  }.property('filterString', 'inputArray.[]'),

  updateFilter: function () {
    this.sendAction('action', this.get('filteredArray'));
  }.observes('filterString')
});
