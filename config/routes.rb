Rails.application.routes.draw do
  get 'home/index'
  resources :dispatches
  resources :drivers
  resources :trucks
  resources :plantations
  resources :planters
  resources :areas
  resources :home
  root "home#index"
  namespace :charts do
    get "new-dispatches"
    get "new-receiving"
    get "new-plantation"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end