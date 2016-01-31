import Mirage, {/*faker*/} from 'ember-cli-mirage';

export default Mirage.Factory.extend({
  firstName(i) { return 'firstName ' + _.padStart(i, 3, "0"); },
  lastName(i) { return 'lastName ' + _.padStart(i, 3, "0"); },
  birth(i) { return new Date(Date.now() + (-365 + (i+1) * 7) * 24*60*60*1000); },
  note() { return "Note"; }
});
