TacoManager.Team = DS.Model.extend({
  name: DS.attr('string'),
  users: DS.hasMany('TacoManager.User')
});
