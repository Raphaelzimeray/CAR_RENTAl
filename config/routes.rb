Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars, only: [ :index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
