import Ember from 'ember';
import Pretender from "pretender";
import { ITEMS_FIXTURE } from '../fixtures/items';
import { VISITS_FIXTURE } from '../fixtures/visits';
import { CUSTOMERS_FIXTURE } from '../fixtures/customers';

var server;

export default {
  start: function () {
    server = new Pretender(function(){
      this.get('/items', function(request){
        return [200, {"Content-Type": "application/json"}, JSON.stringify(ITEMS_FIXTURE)];
      });
      this.get('/visits', function(request){
        return [200, {"Content-Type": "application/json"}, JSON.stringify(VISITS_FIXTURE)];
      });
      this.get('/customers', function(request){
        return [200, {"Content-Type": "application/json"}, JSON.stringify(CUSTOMERS_FIXTURE)];
      });
    });

    // server.unhandledRequest = function(verb, path, request) {
    //   console.log("Pretender found unhandled request: ", verb, path);
    // }
  },

  destroy: function () {
    server.shutdown();
  }
};
