Rails.application.routes.draw do
  resources :users
  resources :pledges
  resources :principles
  resources :quality_of_life_qualifiers
  resources :action_qualifiers
  resources :demographic_qualifiers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
