window.deprecationWorkflow = window.deprecationWorkflow || {};
window.deprecationWorkflow.config = {
  workflow: [
    { handler: "silence", matchId: "ember-htmlbars.handlebars-make-bound-helper" },
    { handler: "silence", matchId: "ember-htmlbars.handlebars-helper" },
    { handler: "silence", matchId: "ember-application.validate-type" },
    { handler: "throw", matchMessage: "Ember.keys is deprecated in favor of Object.keys" },
    { handler: "silence", matchId: "ds.adapter.should-reload-all-default-behavior" }
  ]
};
