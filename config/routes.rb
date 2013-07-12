TacoManager::Application.routes.draw do
  namespace :api do
    resources :teams
    resources :users
    resources :taco_points
    resources :taco_rules
  end

  root to: 'home#show'
end
