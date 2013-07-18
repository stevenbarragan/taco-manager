'use strict';

/* Controllers */
angular.module('tacosApp.controllers', []).
  controller('UserCtrl', ['$scope', '$routeParams', 'Users', function($scope, $routeParams, Users) {
  $scope.users = Users.query()
  $scope.submit = function(){
  }
}]).
  controller('TeamCtrl', ['$scope' , 'Teams', function($scope , Teams) {
    $scope.teams = Teams.query();
    $scope.submit = function(team){
      Teams.save(team, function(resource){
        $scope.teams.push(resource)
      })
    }
}])
