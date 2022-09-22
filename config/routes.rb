Rails.application.routes.draw do
  
  get 'messages/confirmation', to: 'messages#confirmation'
  
  resources :messages
  resources :videos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'music-videos', to: 'videos#music_videos'
  get 'battle-rap', to: 'videos#battle_rap'
  get 'artists-to-watch', to: 'videos#artists_to_watch'

  root "pages#home"
end
