import Ember from 'ember';

export default Ember.Component.extend({
  icon: Ember.computed('gender', function () {
    let gender = this.get('gender');

    switch(gender) {
      case 'male':
        return 'mars';
      case 'female':
        return 'venus';
      default:
        return 'question';
    }
  })
});
