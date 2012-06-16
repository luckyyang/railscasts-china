RailscastsChina::Application.routes.draw do
  get "episodes/show"
  root :to => "home#index"

  resources :users, :only => [ :show, :edit, :update ]
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end