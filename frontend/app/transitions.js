export default function() {
  this.transition(
    this.childOf('#last-flash'),
    this.use('fade')
  );

  this.transition(
    this.toRoute('visit'),
    this.use('toLeft')
  );

  this.transition(
    this.fromRoute('visit'),
    this.use('toRight')
  );

  this.transition(
    this.toRoute('visits'),
    this.use('toRight')
  );

  this.transition(
    this.toRoute('visit.checkout'),
    this.use('toLeft')
  );

  this.transition(
    this.toRoute('visit.show'),
    this.use('toRight')
  );
}
