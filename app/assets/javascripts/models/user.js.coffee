TacoManager.User = DS.Model.extend({
  name:               DS.attr('string'),
  team_name:          DS.attr('string'),
  current_tacopoints: DS.attr('number'),
  sponsor_count:      DS.attr('number'),
  taco_points_count:  DS.attr('number'),
  team:               DS.belongsTo('TacoManager.Team')
});
