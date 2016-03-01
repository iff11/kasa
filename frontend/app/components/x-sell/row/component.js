import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',
  classNames: ['visit-sell'],
  classNameBindings: ['type'],
  isPersisted: Ember.computed.alias('sell.id'),
  isDirty: Ember.computed.alias('sell.isDirty'),
  isEdittingOrDirty: Ember.computed.or('isEditting', 'isDirty'),

  type: Ember.computed('isPersisted', 'isEdittingOrDirty', function() {
    let isPersisted = this.get('isPersisted');
    let isEdittingOrDirty = this.get('isEdittingOrDirty');
    let type;

    if (isEdittingOrDirty) {
      if (isPersisted) {
        type = 'create';
      } else {
        type = 'update';
      }
    } else {
      type = 'show';
    }

    return `visit-sell-row-${type }`;
  }),

  actions: {
    create() {
      this.sendAction('create', this.get('sell'));
      this.set('isEditting', false);
    },
    edit() {
      this.set('firstChangeHack', true);
      this.set('isEditting', true);
    },
    update() {
      this.sendAction('update', this.get('sell'));
      this.set('isEditting', false);
    },
    delete() {
      this.sendAction('delete', this.get('sell'));
      this.set('isEditting', false);
    },
    selectItem() {
      this.set('sell.price', this.get('sell.item.sellingPrice'));
    }
  }
});
