/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    flashMessageDefaults: {
      timeout      : 1000,
      priority     : 100,
      sticky       : true,
      showProgress : false,
      types        : [ 'success', 'danger' ]
    },
    'simple-auth': {
      authorizer: 'simple-auth-authorizer:devise'
    },
    'simple-auth-devise': {
      identificationAttributeName: 'email'
    },
    modulePrefix: 'frontend',
    // podModulePrefix: 'frontend',
    environment: environment,
    baseURL: '/',
    locationType: 'hash',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },
    // i18n: {
    //   defaultLocale: 'cs'
    // },
    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  if (environment === 'development') {
    ENV.APP.SERVER = "http://localhost:3000";

    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';

    ENV['simple-auth'].store = 'simple-auth-session-store:ephemeral';
  }

  if (environment === 'production') {

  }

  return ENV;
};
