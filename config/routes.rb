Rails.application.routes.draw do
  devise_for :utilisateurs
  resources :etats
  resources :apprenants
  resources :sexes
  root "apprenants#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
