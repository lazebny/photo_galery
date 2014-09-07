module.factory('gallery',
['galleryImage', '$q', '_', function (galleryImage, $q, _) {
  var images = []
  var imageData = {}

  return {
    setGallery: function(galleryId) {
      imageData.gallery_id = galleryId
    },

    getImages: function(imageIds) {
      images = []
      for( var i = 0; i < imageIds.length; i++) {
        imageData.id = imageIds[i]
        images.push(galleryImage.get(imageData));
      }
      return images
    },

    formatImages: function(images) {
      self = this
      return _.map(images, function(image){
        return image.galereyaFormat()
      })
    },
  }
}])
