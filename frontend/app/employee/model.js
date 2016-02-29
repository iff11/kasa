import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  photoUrl: DS.attr('string'),
  isActive: DS.attr('boolean'),

  visits: DS.hasMany('visit', { async: true }),

  fullName: Ember.computed('firstName', 'lastName', function() {
    let firstName = this.get('firstName');
    let lastName = this.get('lastName');

    return `${firstName} ${lastName}`;
  })
});
