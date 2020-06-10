Rails.application.routes.draw do
  #resources :users
  resources :users, only: [:show, :create, :new, :index, :destroy] 
  resources :pledges
  resources :principles
  resources :quality_of_life_qualifiers
  resources :action_qualifiers
  resources :demographic_qualifiers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout' => 'sessions#destroy'

  resources :users, only: [:show, :create, :new, :index, :destroy] 

  #root 'welcome#home'
end
