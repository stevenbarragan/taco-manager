TacoManager.TeamsController = Ember.ArrayController.extend(

  createTeam: ->
    name = @get("newName")
    return  unless name.trim()
    team = TacoManager.Team.createRecord(
      name: name
    )
    @set "newName", ""
    team.save()
)
