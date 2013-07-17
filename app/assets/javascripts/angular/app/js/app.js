'use strict';

// Declare app level module which depends on filters, and services
angular.module('tacosApp', ['tacosApp.filters', 'tacosApp.services', 'tacosApp.directives', 'tacosApp.controllers']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/users', {templateUrl: parcial_path + 'users.html', controller: 'UserCtrl'});
    $routeProvider.when('/teams', {templateUrl: parcial_path + 'teams.html', controller: 'TeamCtrl'});
    $routeProvider.otherwise({redirectTo: '/teams'});
  }]);
