TacoManager.Store = DS.Store.extend(
  adapter: DS.RESTAdapter.create(
    namespace: "api"
  )
  revision: 12
)

TacoManager.Store
