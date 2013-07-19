"use strict"

# Controllers 
angular.module("tacosApp.controllers", []).controller("UserCtrl", ["$scope", "$routeParams", "Users", "Teams", ($scope, $routeParams, Users, Teams) ->
  $scope.users = Users.query()
  $scope.teams = Teams.query()
  $scope.submit = (user) ->
    Users.save user, (resource) ->
      console.log resource
      $scope.users.push resource.user

]).controller("TeamCtrl", ["$scope", "Teams", "TacoRules", ($scope, Teams, TacoRules) ->
  app.teams = $scope.teams = Teams.query()
  $scope.submit = (team) ->
    Teams.save team, (resource) ->
      $scope.teams.push resource.team

  $scope.show_team = (team) ->
    $scope.team = team

]).controller "TeamDetailCtrl", ["$scope", "$routeParams", "Teams", "TacoRules", ($scope, $routeParams, Teams, TacoRules) ->
  if app.teams is `undefined`
    app.teams = $scope.teams = Teams.query((teams)->
      team = teams.filter((t) ->
        true if t.id.toString() is $routeParams.teamId
      )
      $scope.team = team[0]
    )
  else
    $scope.teams = app.teams
    team = app.teams.filter((t) ->
      true if t.id.toString() is $routeParams.teamId
    )
    $scope.team = team[0]
  
  $scope.submit_rule = (rule) ->
    rule.team_id = $scope.team.id
    TacoRules.save rule, (rule) ->
      $scope.team.taco_rules.push rule
]
