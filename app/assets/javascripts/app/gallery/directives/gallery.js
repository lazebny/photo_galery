module.directive('gallery',
['gallery', 'promiseForCollection', 'loader',
  function(gallery, allPromises, loader) {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: 'app/gallery/templates/show.html',
      link: function (scope, element, attrs, controller) {
        loader.start()

        galleryId = attrs.galleryId || 0
        imageIds = JSON.parse(attrs.imageIds)

        gallery.setGallery(galleryId)
        images = gallery.getImages(imageIds)

        // console.log(images)
        allPromises(images).then(
          function() {
            loader.stop()
            $('#gallery').galereya({
              spacing: 5,
              wave: false,
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
