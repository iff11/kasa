/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function (defaults) {
  var app = new EmberApp({
    emberCliFontAwesome: {
      useScss: true
    },
    'ember-cli-selectize': {
      'theme': 'bootstrap3'
    }
  });

  app.import(app.bowerDirectory + '/moment/moment.js');
  app.import(app.bowerDirectory + '/moment/locale/cs.js');
  app.import(app.bowerDirectory + '/lodash/lodash.js');

  return app.toTree();
}
