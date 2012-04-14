Dinners::Application.routes.draw do
  resources :static

  match '/auth/:provider/callback', to: 'sessions#create'
end
