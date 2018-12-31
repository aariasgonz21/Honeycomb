Rails.application.routes.draw do

  resources :hairtypes
  resources :hair_stylists, only: :show do
    resources :appointments, only: [:new, :create, :destroy]
  end
  resources :salons, only: [:index, :show, :new, :create]
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
