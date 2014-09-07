//= require ./gallery/main
//= require ./main
// require_tree ./constants
// require_tree ./values
// require_tree ./services
// require_tree ./filters
// require_tree ./directives
// require_tree ./controllers
// require_tree ./templates

mainApp = angular.module('main',
[
  'ngRoute',
  'ngSanitize',
  'ngResource',
  'gallery'
]);

mainApp.config(["$httpProvider",
  function ($httpProvider) {
    csrfToken = $('meta[name=csrf-token]').attr('content');
    $httpProvider.defaults.headers.common["X-CSRF-Token"] = csrfToken;
    return;
  }
]);

bootstrapApp = function() {
  angular.bootstrap(document.body, ['main']);
};

$(document).on('ready', bootstrapApp);
