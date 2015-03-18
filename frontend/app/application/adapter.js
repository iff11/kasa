import DS from 'ember-data';
// import $ from 'jquery';
// import Ember from 'ember';

export default DS.ActiveModelAdapter.reopen({
  // headers: Ember.computed(function(){
  //   var token = $('meta[name="csrf-token"]').attr('content');

  //   return {"X-CSRF-Token": token};
  // })
});
