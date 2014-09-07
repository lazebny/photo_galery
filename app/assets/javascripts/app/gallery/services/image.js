module.factory('galleryImage',
  ['$resource', function($resource) {
    var GalleryImage = $resource('/api/galleries/:gallery_id/images/:id', {
      gallery_id: '@gallery_id',
      id: '@id'
    }, {
      get: { method: 'get' }
    })

    GalleryImage.prototype.galereyaFormat = function() {
      return {
        lowsrc: this.src.middle,
        fullsrc: this.src.large,
        description: this.gallery.name,
        // category: this.gallery.name,
      }
    }

    return GalleryImage
  }]);
