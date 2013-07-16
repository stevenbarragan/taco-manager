TacoManager.Team = DS.Model.extend({
  name: DS.attr('string'),
  users: DS.hasMany('TacoManager.User'),
  taco_rules: DS.hasMany('TacoManager.TacoRule')
});
