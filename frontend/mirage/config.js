export default function() {
  this.namespace = '/api/v1';

  this.get('/customers');
  this.get('/customers/:id');
  this.get('/visits');
  this.get('/visits/:id');
  this.get('/items');
  this.get('/items/:id');
  this.get('/employees');
  this.get('/employees/:id');
  this.get('/sells');
  this.get('/sells/:id');
  this.get('/supplies');
  this.get('/supplies/:id');

  this.post('/customers');
}
