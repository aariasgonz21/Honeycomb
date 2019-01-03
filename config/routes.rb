Rails.application.routes.draw do

  resources :hairtypes, only: :index
  resources :customers

  resources :salons, only: [:index, :show, :new, :create] do
    resources :hair_stylists, only: :show do
      resources :services, only: :show do
        resources :appointments, only: [:new, :create, :destroy]
      end
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
