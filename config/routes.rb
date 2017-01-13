Rails.application.routes.draw do
  resources :movies
  resources :productors
  resources :people
  resources :distributors
  resources :origins
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
