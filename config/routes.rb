Rails.application.routes.draw do
<<<<<<< HEAD
  get 'static', to: 'static#index'
  get 'static/index'
  get 'static/not_index'
<<<<<<< HEAD
  root "restaurants#index"
=======
  # root to: "static#index"
  resources :reservations
  root "reservations#index"
>>>>>>> master
  devise_for :users
  resources :restaurants
=======
  get 'restaurant/index'
  get 'restaurant/new'
  get 'restaurant/create'
  get 'restaurant/edit'
  get 'restaurant/update'
  get 'restaurant/destroy'
>>>>>>> c4fe6b4c12e060bcf0a1e9e9f2171d0c86b69e8f
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
