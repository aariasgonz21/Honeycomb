Rails.application.routes.draw do
  resources :appointments
  resources :hair_stylists, only: [:index, :show]
  resources :salons, only: [:index, :show, :new, :create]
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
