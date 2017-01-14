import Ember from 'ember';

export default Ember.Controller.extend({
  session: Ember.inject.service(),
  attrs: {},

  // TODO: Stop pretending that we have multiple companies
  company: Ember.computed('attrs.companies.[]', function () {
    return this.get('attrs.companies.firstObject');
  })
});
