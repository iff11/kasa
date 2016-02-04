import DS from 'ember-data';

export default DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  photo_url: DS.attr('string'),
  isActive: DS.attr('boolean'),

  visits: DS.hasMany('visit', {async: true}),

  full_name: function() {
    return this.get('firstName') + " " + this.get('lastName');
  }.property('firstName', 'lastName'),
});
