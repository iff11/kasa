import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | admin/visit');

test('visiting /admin/visit', function(assert) {
  let myVisit = server.create('visit');

  visit(`/admin/visit/${myVisit.id}`);

  andThen(function() {
    assert.equal(find('.admin-visit-updated-at').text(), moment(myVisit.updatedAt).format('LLLL'), 'Date of visit is correct');
  });
});
