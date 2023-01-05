Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  devise_scope :admin do
    # Redirests signing out users back to sign-in
    get "login", to: "devise/sessions#new"
  end
  
  # registrations controller -> only one admin
  # sessions controller -> recaptcha
  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
  resources :features
  resources :tours
  
  resources :messages
  resources :videos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # VIDEO ROUTES
  get 'music-videos', to: 'videos#music_videos'
  get 'battle-rap', to: 'videos#battle_rap'
  get 'artists-to-watch', to: 'videos#artists_to_watch', as: 'artists'
  
  # MESSAGE ROUTES
  get 'contact', to: 'messages#new'
  get 'contact/confirmation', to: 'messages#confirmation'

  # PAGE ROUTES
  get 'game-corner', to: 'pages#game_corner' 
  get 'merchandise', to: 'pages#merchandise' 

  root "pages#home"
end
