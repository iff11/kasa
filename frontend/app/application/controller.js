import Ember from 'ember';

export default Ember.Controller.extend({
  session: Ember.inject.service(),
  attrs: {},

  populateStore: function() {
    // this.set('stillLoading', 5);

    // this.store.find('item').then(() => {
    //   this.decrementProperty('stillLoading');
    // });
    // this.store.find('visit').then(() => {
    //   this.decrementProperty('stillLoading');
    // });
    // this.store.find('customer').then(() => {
    //   this.decrementProperty('stillLoading');
    // });
    // this.store.find('sell').then(() => {
    //   this.decrementProperty('stillLoading');
    // });
    // // supplies: this.store.find('supply');
    // this.store.find('employee').then(() => {
    //   this.decrementProperty('stillLoading');
    // });
  }.on('init')
});
