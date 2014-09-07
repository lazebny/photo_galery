//= require_self
//= require_tree ./values
//= require_tree ./services
//= require_tree ./templates
//= require_tree ./controllers
//= require_tree ./directives

module = angular.module('gallery',
  [
    'ngResource',
    'ngSanitize',
    'templates'
  ]
);

