import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    saveCompanyName(company) {
      company.save();
    },
    addNewEntity(company) {
      let flash = Ember.get(this, 'flashMessages');

      let entity = this.store.createRecord('entity', {
        name: 'New entity',
        company: company
      });
      entity.save().then(() => {
        flash.success('Successfully saved!');

        // TODO: https://github.com/emberjs/data/issues/1913
        company.eachRelationship(function(name, descriptor) {
          company[descriptor.kind](name).reload();
        });
      });
    },
    saveEntityName(entity) {
      entity.save();
    }
  }
});
