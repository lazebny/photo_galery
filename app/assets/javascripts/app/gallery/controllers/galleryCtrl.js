module.controller(
  'GalleryCtrl',
  ['$scope', 'galleryImage', function($scope, galleryImage) {
    console.log('gallery ctrl');
    imageData = {
      gallery_id: 1
    }

    $scope.images = []
    ids = [1, 2, 3, 4, 5, 6]
    for( var i = 1; i <= ids.length; i++) {
      imageData.id = i
      $scope.images.push(galleryImage.get(imageData));
    }

    window.images = $scope.images
  }]
)
