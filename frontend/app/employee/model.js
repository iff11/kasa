import DS from 'ember-data';

export default DS.Model.extend({
  first_name: DS.attr(),
  last_name: DS.attr(),
  photo_url: DS.attr(),

  visits: DS.hasMany('visit', {async: true}),

  full_name: function() {
    return this.get('first_name') + " " + this.get('last_name');
  }.property('first_name', 'last_name'),
});
