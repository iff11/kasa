import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    saveCompanyName(company) {
      company.save();
    },
    addNewEntity() {
      this.store.createRecord('entity', {name: 'New entity'});
    },
    saveEntityName(entity) {
      entity.save();
    }
  }
});
