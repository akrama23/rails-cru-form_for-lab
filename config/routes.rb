Rails.application.routes.draw do
  # resources :artists, only: []

  get '/artists', to: 'artists#index', as: :artists
  get '/artists/new', to: 'artists#new', as: :new_artist
  get '/artists/:id', to: 'artists#show', as: :artist
  post '/artists', to: 'artists#create'
  get '/artists/:id/edit', to: 'artists#edit', as: :edit_artist
  patch '/artists/:id', to: 'artists#update'

  resources :genres, only: [:index, :new, :show, :create, :edit, :update]
  respurces :songs, only: [:index, :new, :show, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
