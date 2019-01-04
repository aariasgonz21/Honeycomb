Rails.application.routes.draw do

  #get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :hairtypes, only: :index
  resources :customers
  resources :salons, only: [:index, :show, :new, :create]
  resources :hair_stylists, only: :show
  resources :appointments, only: [:new, :create, :destroy]
  resources :services, only: :show

  root to: 'pages#home'
end

# resources :salons, only: [:index, :show, :new, :create] do
#   resources :hair_stylists, only: :show do
#     resources :services, only: :show do
#       resources :appointments, only: [:new, :create, :destroy]
#     end
#   end
# end
