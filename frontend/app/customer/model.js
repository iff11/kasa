import DS from 'ember-data';

export default DS.Model.extend({
  first_name: DS.attr(),
  last_name: DS.attr(),
  note: DS.attr(),
  birth: DS.attr(),
  phone: DS.attr(),
  mail: DS.attr(),
  visits_count: DS.attr(),
  // url: DS.attr(),

  full_name: function() {
    return this.get('first_name') + " " + this.get('last_name');
  }.property('first_name', 'last_name'),

  visits: DS.hasMany('visit')
});
