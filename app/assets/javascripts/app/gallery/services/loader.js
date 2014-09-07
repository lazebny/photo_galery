module.factory('loader',
[function() {
  loader = angular.element(
    "<div class='photo-gallery-loader'></div>")
  angular.element('body').append(loader)

  return {
    start: function() {
      loader.show();
    },
    stop: function() {
      loader.hide();
    }
  }
}])
