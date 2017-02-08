import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('x-receipt/entity-sum', 'Integration | Component | x receipt/entity sum', {
  integration: true
});

test('it renders', function(assert) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{x-receipt/entity-sum}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#x-receipt/entity-sum}}
      template block text
    {{/x-receipt/entity-sum}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
