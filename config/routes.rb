Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  # get 'movies/index'

  # get 'movies/show'

  # get 'movies/new'

  # get 'movies/edit'

  resources :movies
  resources :users,     only: [:new, :create]
  resources :sessions,  only: [:new, :create]
end
