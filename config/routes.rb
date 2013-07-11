TacoManager::Application.routes.draw do
  namespace :api do
    resources :users
    resources :taco_points
    resources :teams
  end

  root to: 'home#show'
end
