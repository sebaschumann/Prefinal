Rails.application.routes.draw do
  resources :team_pilots
  resources :laps
  resources :pilots
  resources :races
  resources :circuits
  resources :championships
  resources :teams
  resources :brands
  resources :sujetos
  devise_for :users

  root "pilots#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
