/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    i18nextOptions: {
      fallbackLng: 'cs',
      // any options supported by i18next
      backend: {
        loadPath: '/assets/locales/{{lng}}/{{ns}}.json'
        // any options supported by i18next-xhr-backend
      }
    },
    app: {
      dateFormat: 'YYYY-MM-DD'
    },
    rollbar: {
      accessToken: 'c460fc7fd2984449a1bde79f666d8db1',
      enabled: true,
      captureUncaught: true,
    },
    moment: {
      outputFormat: 'L'
    },
    flashMessageDefaults: {
      timeout      : 1000,
      priority     : 100,
      sticky       : true,
      showProgress : false,
      types        : [ 'success', 'danger' ]
    },
    contentSecurityPolicy: {
      'connect-src': "*"
    },
    'ember-simple-auth': {
      routeAfterAuthentication: 'visits',
      routeIfAlreadyAuthenticated: 'visits'
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
    i18n: {
      defaultLocale: 'cs'
    },
    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  if (environment === 'development') {
    ENV.APP.SERVER = "http://localhost:3000";

    ENV['ember-cli-mirage'] = {
      enabled: false
    }

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

    // ENV.PRETENDER_DEBUG = false;
    // ENV.PRETENDER_TRACE = false;
    // ENV.PRETENDER_ERROR = false;
  }

  if (environment === 'production') {

  }

  return ENV;
};
