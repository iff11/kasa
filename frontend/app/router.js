import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('items', function() {});
  this.route('customers', function() {});

  this.route('visits', {path: 'visits'}, function() {});
  this.route('visit', {path: '/visit/:id'}, function() {
    this.route('checkout');
  });

  this.route('admin', function() {
    this.route('items');
    this.route('customers');
    this.route('employees');
  });
});

export default Router;
