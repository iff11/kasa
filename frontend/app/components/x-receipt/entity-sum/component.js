import Ember from 'ember';
import DS from 'ember-data';

export default Ember.Component.extend({
  tagName: 'li',

  sum: Ember.computed('sells.[]', 'entity.id', function () {
    let entityId = this.get('entity.id');

    return DS.PromiseObject.create({
      promise: this.get('sells').then((sells) => {
        return Ember.RSVP.all(sells.map(sell => {
          return sell.get('item').then((item) => {
            return item.get('entity').then((entity) => {
              if(entity.get('id') === entityId) {
                return sell.get('price') * sell.get('count');
              }
            })
          });
        }));
      }).then(function(result){
        return result.reduce((prev, curr) => {
          return prev + curr;
        }, 0);
      })
    });
  })
});
