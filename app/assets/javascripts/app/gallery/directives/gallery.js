module.directive('gallery',
['gallery', 'promiseForCollection',
  function(gallery, allPromises) {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: 'app/gallery/templates/show.html',
      link: function (scope, element, attrs, controller) {

        galleryId = attrs.galleryId || 0
        imageIds = JSON.parse(attrs.imageIds)

        gallery.setGallery(galleryId)
        images = gallery.getImages(imageIds)

        // console.log(images)
        allPromises(images).then(
          function() {
            $('#gallery').galereya({
              load: function(next) {
                formatedImages = gallery.formatImages(images)
                // console.log(formatedImages)
                next(formatedImages)
              }
            })
          }
        )
      }
    }
  }
])
