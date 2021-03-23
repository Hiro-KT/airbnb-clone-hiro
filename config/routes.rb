Rails.application.routes.draw do
  root 'pages#home'
  resources :rooms do
    member do
      get 'room'
      get 'price'
      get 'description'
      get 'photos'
      get 'amenities'
      get 'location'
      get 'price'
      get 'preview'
      get 'preload'
    end
    resources :photos, only: [:create, :destroy]
    resources :reservations
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get '/your_reservations', to: 'reservations#your_reservations'
  get '/your_trips', to: 'reservations#your_trips'
  resources :users

end
