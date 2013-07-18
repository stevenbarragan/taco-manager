'use strict';

/* Controllers */
angular.module('tacosApp.controllers', []).
  controller('UserCtrl', ['$scope', '$routeParams', 'Users', 'Teams', function($scope, $routeParams, Users, Teams) {;
  $scope.users = Users.query()
  $scope.teams = Teams.query()
  $scope.submit = function(user){
    Users.save( user , function(resource){
      console.log( resource )
      $scope.users.push( resource.user )
    })
  }
}]).
  controller('TeamCtrl', ['$scope' , 'Teams', function($scope , Teams) {
    $scope.teams = Teams.query();
    $scope.submit = function(team){
      Teams.save(team, function(resource){
        $scope.teams.push(resource.team)
      })
    }
}])
