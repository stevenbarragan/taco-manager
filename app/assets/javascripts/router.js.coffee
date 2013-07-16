TacoManager.Router.map ->
  @resource "users"
  @resource "teams", ->
    @resource "team",
      path: ':team_id'

TacoManager.UsersRoute = Ember.Route.extend(model: ->
  TacoManager.User.find()
)

TacoManager.TeamsRoute = Ember.Route.extend(model: ->
  TacoManager.Team.find()
)
