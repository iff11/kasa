import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  session: Ember.inject.service(),
  i18n: Ember.inject.service(),

  loadLayoutData() {
    this.get('i18n').initLibraryAsync();
    
    if(this.get('session.isAuthenticated')) {
      this.controller.setProperties({
        'attrs.companies': this.store.findAll('company'),
        'attrs.customers': this.store.findAll('customer')
      });
    }
  },

  actions: {
    logout() {
      this.get('session').invalidate();
    },
    didTransition: function() {
      this.loadLayoutData();
      return true;
    }
  },

  sessionAuthenticated() {
    this._super();
    if(this.get('session.data.authenticated.role') === 'registrar') {
      this.transitionTo('registration');
    } else {
      this.loadLayoutData();
    }
  }
});
