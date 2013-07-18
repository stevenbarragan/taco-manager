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
  controller('TeamCtrl', ['$scope' , 'Teams', 'TacoRules', function($scope , Teams, TacoRules) {
    $scope.teams = Teams.query();
    $scope.submit = function(team){
      Teams.save(team, function(resource){
        $scope.teams.push(resource.team);
      })
    };
    $scope.show_team = function(team){
      $scope.team = team;
    };
    $scope.submit_rule = function(rule){
      console.log( rule )
      rule.team_id = $scope.team.id
      TacoRules.save(rule, function(rule){
        $scope.team.taco_rules.push( rule )
      })
    }
}])
