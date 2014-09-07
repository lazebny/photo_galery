module.directive('galleryImage',
['$sce',
  function($sce) {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: 'app/gallery/templates/_image.html',
      scope: {
        image: '='
      },
      link: function(scope, element, attrs) {
        scope.sanitize = function(content) {
          return $sce.getTrustedResourceUrl(content)
        }
      }
    }
}
])
