Rails.application.routes.draw do
  get 'static', to: 'static#index'
  get 'static/index'
  resources :reservations, :restaurants
  root "static#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
