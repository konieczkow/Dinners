Dinners::Application.routes.draw do
  resources :static

  match '/login', to: 'sessions#new'
  match '/auth/:provider/callback', to: 'sessions#create'

  root to: 'Home#index'
end
