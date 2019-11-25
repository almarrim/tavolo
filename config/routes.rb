Rails.application.routes.draw do
  get 'static', to: 'static#index'
  get 'static/index'
  get 'static/not_index'
  # root to: "static#index"
  root "reservations#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
