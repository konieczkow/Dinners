Dinners::Application.routes.draw do
  get "events/Places"

  resources :static

  resources :events, only: [:new, :create] do
    resources :places do
    end
  end

  match '/login', to: 'sessions#new'

  match '/anonymous_user/create/:name/:hash', to: 'sessions#anonymous_create'
  match '/auth/:provider/callback', to: 'sessions#create'

  root to: 'Home#index'
end
