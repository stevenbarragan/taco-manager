'use strict';

/* Controllers */
angular.module('tacosApp.controllers', []).
  controller('UserCtrl', ['$scope' , 'Users', function($scope , Users) {
    $scope.users = Users.query()
  }])
