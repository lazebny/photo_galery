module.directive('gallery',
['galleryImage',
  function(galleryImage) {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: 'app/gallery/templates/show.html',
      link: function (scope, element, attrs, controller) {
        // console.log(attrs, scope.imageIds)

        galleryId = attrs.galleryId || 0
        imageIds = JSON.parse(attrs.imageIds)


        imageData = {
          gallery_id: galleryId
        }

        // ids = [1, 2, 3, 4, 5, 6]
        scope.images = []
        for( var i = 1; i <= imageIds.length; i++) {
          imageData.id = i
          scope.images.push(galleryImage.get(imageData));
        }
      }
    }
  }
])
