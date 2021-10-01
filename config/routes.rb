Rails.application.routes.draw do

  resources :artists, only: %i[show] do
    # nested resource for songs
    resources :songs, only: %i[show index]
  end
  resources :artists
  resources :songs, only: %i[new create show index edit update]
end
