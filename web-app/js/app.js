'use strict';


// Declare app level module which depends on filters, and services
angular.module('myApp', ['myApp.filters', 'myApp.services', 'myApp.directives']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/signin', {templateUrl: 'partials/signin.html', controller: 'SigninController'});
    $routeProvider.when('/signup', {templateUrl: 'partials/signup.html', controller: 'SignupController'});
    $routeProvider.otherwise({redirectTo: '/signin'});
  }]);
