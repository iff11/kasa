import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    saveEntity() {
      this.get('saveEntityName')(this.get('entity'));
    }
  }
});
