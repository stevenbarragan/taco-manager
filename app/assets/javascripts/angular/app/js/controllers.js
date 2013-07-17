'use strict';

/* Controllers */
angular.module('tacosApp.controllers', []).
  controller('UserCtrl', ['$scope' , 'Users', function($scope , Users) {
    $scope.users = Users.query()
  }]).
  controller('TeamCtrl', ['$scope' , 'Teams', function($scope , Teams) {
    $scope.teams = Teams.query()
  }])
