import { Model, hasMany, belongsTo } from 'ember-cli-mirage';

export default Model.extend({
  sells: hasMany(),
  customer: belongsTo(),
  employee: belongsTo()
});
