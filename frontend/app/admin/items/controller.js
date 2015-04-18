import Ember from 'ember';
import pagedArray from 'ember-cli-pagination/computed/paged-array';

export default Ember.Controller.extend({
  attrs: {items: []},

  isShowingNewForm: false,

  toggleIconNew: function() {
    if(this.get('isShowingNewForm')) {
      return 'chevron-down';
    } else {
      return 'chevron-up';
    }
  }.property('isShowingNewForm'),

  queryParams: ["page", "perPage"],
  page: 1,
  perPage: 20,
  pagedContent: pagedArray("attrs.items", {pageBinding: "page", perPageBinding: "perPage"}),
  totalPagesBinding: "pagedContent.totalPages",


  actions: {
    deleteItem: function(item) {
      var flash = Ember.get(this, 'flashMessages');

      item.deleteRecord();
      item.save().then(function() {
        flash.success('Item deleted');
      }, function(response) {
        flash.danger('Item cannot be deleted! ' + response.responseText);
      });
    },

    updateItem: function(item) {
      var flash = Ember.get(this, 'flashMessages');

      item.save().then(function() {
        flash.success('Item updated');
      }, function(response) {
        flash.danger('Item cannot be updated! ' + response.responseText);
      });
    },

    toggleRouteNew: function() {
      this.toggleProperty('isShowingNewForm');
      if(this.get('isShowingNewForm')) {
        this.transitionTo('admin.items.new');
      } else {
        this.transitionTo('admin.items');
      }
    }
  }
});
