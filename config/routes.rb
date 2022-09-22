Rails.application.routes.draw do
  
  resources :messages
  resources :videos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # VIDEO ROUTES
  get 'music-videos', to: 'videos#music_videos'
  get 'battle-rap', to: 'videos#battle_rap'
  get 'artists-to-watch', to: 'videos#artists_to_watch'
  
  # MESSAGE ROUTES
  get 'contact', to: 'messages#new'
  get 'contact/confirmation', to: 'messages#confirmation'

  root "pages#home"
end
