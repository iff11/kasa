export default function(){
  this.transition(
    this.toRoute('items', 'visits', 'customers'),
    this.use('crossFade')
  );

  this.transition(
    this.fromRoute('visits'),
    this.toRoute('visit'),
    this.use('toLeft'),
    this.reverse('toRight')
  );

  this.transition(
    this.toRoute('visit'),
    this.use('toDown'),
    this.reverse('toUp')
  );

  this.transition(
    this.childOf('.item-count'),
    this.use('fade')
  );

  this.transition(
    this.toRoute('sell/checkout'),
    this.use('toDown'),
    this.reverse('toUp')
  );
};
