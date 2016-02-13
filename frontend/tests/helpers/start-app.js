import Ember from 'ember';
import Application from '../../app';
import config from '../../config/environment';
import { authenticateSession } from 'frontend/tests/helpers/ember-simple-auth';

export default function startApp(attrs) {
  let application;

  let attributes = Ember.merge({}, config.APP);
  attributes = Ember.merge(attributes, attrs); // use defaults, but you can override;

  Ember.run(() => {
    application = Application.create(attributes);
    application.setupForTesting();
    application.injectTestHelpers();
  });

  // Most of the tests are for authenticated user
  authenticateSession(application, {});

  // ember-cli-mirage will log queries
  server.logging = true;

  return application;
}
