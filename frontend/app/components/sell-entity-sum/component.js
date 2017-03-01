import Ember from 'ember';
import DS from 'ember-data';

export default Ember.Component.extend({
  sum: Ember.computed('sells.[]', 'entity.id', function () {
    let entityId = this.get('entity.id');

    const promise = Ember.RSVP.filter(this.get('sells').toArray(), (sell) => {
        return sell.get('entity').then((entity) => {
          return entity.get('id') === entityId;
        });
      }).then(function(sellsForCurrentEntity) {
        return sellsForCurrentEntity.reduce((prev, curr) => {
          return prev + (curr.get('price') * curr.get('count'));
        }, 0);
      });

    return DS.PromiseObject.create({
      promise: promise
    });
  })
});
