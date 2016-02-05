export default function() {
  this.namespace = '/api/v1';

  this.get('/customers');
  this.get('/visits');
  this.get('/visits/:id');
  this.get('/items');
  this.get('/items/:id');
  this.get('/employees');
  this.get('/sells');
  this.get('/sells/:id');
}
