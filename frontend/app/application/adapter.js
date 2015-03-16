import DS from 'ember-data';
import $ from 'jquery';

export default DS.ActiveModelAdapter.extend({
  // headers: Ember.computed(function(){
  //   var token = Ember.$('meta[name="csrf-token"]').attr('content');
  //   console.log(token);

  //   return {"X-CSRF-Token": token};
  // })

headers: {
    "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')
  }
});
