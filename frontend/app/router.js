import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('login');

  this.route('items', function() {});
  this.route('customers', function() {});

  this.route('visits', {path: 'visits'}, function() {});
  this.route('visit', {path: '/visit/:id'}, function() {
    this.route('show');
    this.route('checkout');
  });

  this.route('admin', function() {
    this.route('items', function() {
      this.route('new');
    });
    this.route('item', {path: 'item/:id'});

    this.route('customers');
    this.route('employees');

    this.route('visit', {path: 'visit/:id'});
    this.route('customer', {path: 'customer/:id'});
    this.route('employee', {path: 'employee/:id'});
    this.route('supply');
  });
});

export default Router;
