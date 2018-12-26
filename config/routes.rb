Rails.application.routes.draw do
  resources :appointments
  resources :hair_stylists
  resources :salons
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
