import DS from 'ember-data';

export default DS.Model.extend({
  firstName: DS.attr(),
  lastName: DS.attr(),
  note: DS.attr(),
  birth: DS.attr(),
  phone: DS.attr(),
  mail: DS.attr(),
  visitsCount: DS.attr(),
  visits: DS.hasMany('visit', {async: true}),
  lastVisit: DS.belongsTo('visit', {async: true, inverse: 'lastVisitFor'}),

  full_name: function() {
    return this.get('firstName') + " " + this.get('lastName');
  }.property('firstName', 'lastName'),

  // momentjs obejct of next date customer celebrates birthday
  nextBirthday: function() {
    var birth = this.get('birthday'),
        now = moment(),
        currYear = now.year(),
        thisYearBirthDay = birth.clone().year(currYear),
        nextYearBirthDay = birth.clone().year(currYear + 1);

    if(now.diff(thisYearBirthDay, 'days') > 0) {
      return nextYearBirthDay;
    } else {
      return thisYearBirthDay;
    }
  }.property('birth'),

  nextBirthdayInDays: function() {
    var now = moment(),
        nextBirthday = this.get('nextBirthday');

    if(nextBirthday) {
      return nextBirthday.diff(now, 'days');
    } else {
      return '?';
    }
  }.property('nextBirthday'),

  // momentjs object of customer's birthday
  birthday: function() {
    return moment(this.get('birth'), 'YYYY-MM-DD');
  }.property('birth')
});
