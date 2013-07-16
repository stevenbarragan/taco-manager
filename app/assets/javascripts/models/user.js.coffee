TacoManager.User = DS.Model.extend({
  name:               DS.attr('string'),
  team_id:            DS.attr('string'),
  current_tacopoints: DS.attr('string'),
  sponsor_count:      DS.attr('string'),
  taco_points_count:  DS.attr('string'),
  team:               DS.belongsTo('TacoManager.Team')
});
