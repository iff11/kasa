import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    saveCompanyName(company) {
      company.save();
    }
  }
});
