Rails.application.routes.draw do
   root 'pages#home'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :users
  resources :rooms do
    member do
      get 'room'
      get 'price'
      get 'description'
      get 'photos'
      get 'amenities'
      get 'location'
    end
  end
end
