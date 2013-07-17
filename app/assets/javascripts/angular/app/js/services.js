'use strict';

/* Services */
angular.module('tacosApp.services', ['ngResource']).
  factory('Users', function($resource){
    return $resource('/api/users/:userId');
  }).
  factory('Teams', function($resource){
    return $resource('/api/teams/:teamId');
  });
