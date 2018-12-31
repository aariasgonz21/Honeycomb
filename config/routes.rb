Rails.application.routes.draw do

  resources :services
  resources :hairtypes, only: :index
  resources :hair_stylists, only: :show 
  resources :salons, only: [:index, :show, :new, :create]
  resources :customers do
    resources :appointments, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
