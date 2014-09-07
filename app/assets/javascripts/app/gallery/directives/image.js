module.directive('galleryImage',
[
  function() {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: 'app/gallery/templates/_image.html',
      scope: {
        image: '='
      }
    }
}
])
