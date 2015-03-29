import DS from 'ember-data';

export default DS.Model.extend({
  first_name: DS.attr(),
  last_name: DS.attr(),
  note: DS.attr(),
  birth: DS.attr(),
  phone: DS.attr(),
  mail: DS.attr(),
  visits_count: DS.attr(),
  visits: DS.hasMany('visit'),

  full_name: function() {
    return this.get('first_name') + " " + this.get('last_name');
  }.property('first_name', 'last_name'),

  // momentjs obejct of next date customer celebrates birthday
  nextBirthday: function() {
    var birth = this.get('birthday'),
        now = moment(),
        currYear = now.year(),
        thisYearBirthDay = birth.clone().year(currYear),
        nextYearBirthDay = birth.clone().year(currYear + 1);

    if(now.diff(thisYearBirthDay, 'days') > 0) {
      return nextYearBirthDay
    } else {
      return thisYearBirthDay
    }
  }.property('birth'),

  // momentjs object of customer's birthday
  birthday: function() {
    return moment(this.get('birth'), 'YYYY-MM-DD');
  }.property('birth')
});
