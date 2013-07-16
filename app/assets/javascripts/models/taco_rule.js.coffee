TacoManager.TacoRule = DS.Model.extend({
  description: DS.attr('string'),
  team:        DS.belongsTo('TacoManager.Team')
});
