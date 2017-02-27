import { Model, belongsTo } from 'ember-cli-mirage';

export default Model.extend({
  // visit: belongsTo()
  item: belongsTo(),
  entity: belongsTo()
});
