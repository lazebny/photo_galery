module.factory('galleryImage',
  ['$resource', function($resource) {
    return $resource('/api/galleries/:gallery_id/images/:id', {
      gallery_id: '@gallery_id',
      id: '@id'
    }, {
      get: { method: 'get' }
    })
  }]);
