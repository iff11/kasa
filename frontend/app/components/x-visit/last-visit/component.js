import Ember from 'ember';

export default Ember.Component.extend({
  tagName: '',

  days: function () {
    var now = moment(),
        created = moment(this.get('visit.updatedAt'));

    return now.diff(created, 'days');
  }.property('visit.updatedAt'),

  class: function () {
    if (this.get('days') < 30) {
      return 'label-success';
    } else if (this.get('days') < 60) {
      return 'label-warning';
    } else {
      return 'label-danger';
    }
  }.property('days')
});
