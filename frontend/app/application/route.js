import Ember from 'ember';
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  renderTemplate: function() {
    this.render();

    this.render('menu', {
      outlet: 'menu',
      controller: 'menu',
      into: 'application'
    });
  }
});
