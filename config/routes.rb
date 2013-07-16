TacoManager::Application.routes.draw do
  namespace :api do
    resources :teams
    resources :users
    resources :taco_points
    resources :taco_rules
  end

  namespace :e do
    root to: 'home#show'
  end

  root to: 'home#show'
end
