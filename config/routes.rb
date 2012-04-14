Dinners::Application.routes.draw do
  resources :static

  match '/auth/:provider/callback', to: 'sessions#create'

  root to: 'Home#index'
end
