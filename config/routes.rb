Rails.application.routes.draw do
  resources :bottles
  resources :sujetos
  devise_for :users

  root "bottles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
