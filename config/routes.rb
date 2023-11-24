Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :artists, only: [:index, :show, :new, :create, :edit] do
    resources :artworks, only: [:index, :new, :create, :edit, :update]
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :artworks, only: [:destroy]


  get 'profile', to: 'pages#profile'
  get 'index_artworks', to: 'pages#index_artworks'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
