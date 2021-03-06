import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  isEdit: true,

  actions: {
    deleteItem() {
      let flash = Ember.get(this, 'flashMessages');
      let item = this.get('attrs.item');

      item.deleteRecord();
      item.save().then(function() {
        flash.success('Item deleted');
      }, function(response) {
        flash.danger(`Item cannot be deleted! ${response.responseText}`);
      });
    },

    updateItem() {
      let flash = Ember.get(this, 'flashMessages');
      let item = this.get('attrs.item');

      item.save().then(function() {
        flash.success('Item updated');
      }, function(response) {
        flash.danger(`Item cannot be updated! ${response.responseText}`);
      });
    }
  }
});
