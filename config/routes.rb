Rails.application.routes.draw do
  resources :people_risk_groups
  resources :beds
  resources :doctors
  resources :health_centers
  resources :phones
  resources :emergencial_supports
  resources :tests
  resources :risk_groups
  resources :people
  resources :cases
  resources :cities
  resources :states
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end