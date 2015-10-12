import Ember from 'ember';

export default Ember.Controller.extend({
  attrs: {},
  heap: {},

  actions: {
    createEmployee: function() {
      var employee = this.store.createRecord('employee', {
        firstName: this.get('heap.firstName'),
        lastName: this.get('heap.lastName'),
        birth: this.get('heap.birth'),
        phone: this.get('heap.phone'),
        mail: this.get('heap.mail'),
        note: this.get('heap.note')
      });

      var that = this;
      var flash = Ember.get(this, 'flashMessages');

      employee.save().then(function() {
        that.set('heap', {});
        flash.success('Successfully saved!');
      }, function(response) {
        flash.danger('Something went wrong!', response);
      });
    }
  }
});
