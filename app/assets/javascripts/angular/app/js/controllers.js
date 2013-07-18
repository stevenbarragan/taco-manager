'use strict';

/* Controllers */
angular.module('tacosApp.controllers', []).
  controller('UserCtrl', ['$scope', '$routeParams', 'Users', function($scope, $routeParams, Users) {
  $scope.users = Users.query()
  $scope.submit = function(){
  }
}]).
  controller('TeamCtrl', ['$scope' , 'Teams', function($scope , Teams) {
  $scope.teams = Teams.query()
  $scope.submit = function(){
    team = Teams.get()
    team.name = $scope.team.name
    team.save()
    // console.log(Teams.get())
    // console.log( $scope.team.name )
    // console.log( $scope.team)
  }
}])
